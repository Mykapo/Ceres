//
//  MissionRow.swift
//  gaiaApp
//
//  Created by Molika THAI on 15/03/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "missionCellId"
    private let lockedCellId = "lockedCellId"
    
    var missionsListController: MissionsListViewController?
    
    override init(frame: CGRect) {
        
        // call superclass' init function
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    let missionCategory: UILabel = {
        let label = UILabel()
        label.text = "Missions courtes"
        label.text = label.text?.uppercased()
        label.font = UIFont(name: UIFont.fontNames(forFamilyName:
            "SF Pro Display")[1], size: 13) // SF Pro Display Bold
        label.textColor = UIColor.pickleGrey
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let missionsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        layout.scrollDirection = .horizontal
        
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    func setupViews(){
        backgroundColor = UIColor.clear
        
        addSubview(missionsCollectionView)
        addSubview(missionCategory)
        
        missionsCollectionView.dataSource = self
        missionsCollectionView.delegate = self
        
        missionsCollectionView.register(MissionCell.self, forCellWithReuseIdentifier: cellId)
        missionsCollectionView.register(LockedCell.self, forCellWithReuseIdentifier: lockedCellId)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-24-[v0]-24-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": missionCategory]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": missionsCollectionView]))

        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-32-[category]-8-[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": missionsCollectionView, "category": missionCategory]))
    }
    
    // -- MARK: COLLECTIONVIEW FUNCTIONS OVERRIDE
    
    // Number of items per CategoryCell
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    // Add margins to the CategoryCell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    // Return the correct type of cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 2 {
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: lockedCellId, for: indexPath) as! LockedCell
            
            return cell
        }
        
        
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MissionCell
        
        return cell
    }
    
    // Set MissionCell elements' width and height
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 200, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Show PopupLockedView if locked mission is clicked
        if indexPath.item == indexPath.endIndex {
            PopupLockedView.instance.showPopup()
        }
    }
    
}
