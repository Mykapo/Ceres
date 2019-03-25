//
//  MissionRowCollectionViewCell.swift
//  gaiaApp
//
//  Created by Molika THAI on 15/03/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionRowCollectionViewCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "missionCellId"
    
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
        label.font = UIFont(name: "SF-Pro-Display-Bold", size: 13)
        label.textColor = UIColor.pickleGrey
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    func missionsCollectionView() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        layout.scrollDirection = .horizontal
        
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }
    
    func setupViews(){
        backgroundColor = UIColor.clear
        
        let missionsCollectionView = self.missionsCollectionView()
        
        addSubview(missionsCollectionView)
        addSubview(missionCategory)
        
        missionsCollectionView.dataSource = self
        missionsCollectionView.delegate = self
        
        missionsCollectionView.register(MissionCellCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": missionCategory]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": missionsCollectionView]))

        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[category(30)][v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": missionsCollectionView, "category": missionCategory]))
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MissionCellCollectionViewCell
        
        return cell
    }
    
    // Set collection view items width and height
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: frame.height)
    }
    
    // Add margins to collectionViews
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
}
