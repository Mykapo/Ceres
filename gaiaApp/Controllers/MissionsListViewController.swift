//
//  MissionsListViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 31/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionsListViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    private let largeCellId = "largeCellId"
    private let headerId = "headerId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.setupViews()
        
        // Load user :D
        PickleUser.getUser() {
            user, error in
            
            guard nil == error else {
                print(error!.localizedDescription)
                return
            }
            
            if let user = user {
                PickleMission.getNextMissions(for: user) {
                    user, error in
                    
                    guard error == nil else {
                        print(error!.localizedDescription)
                        return
                    }
                    
                    print(user!)
                }
            }
        }
        
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(LargeCategoryCell.self, forCellWithReuseIdentifier: largeCellId)
//        collectionView?.register(MissionListHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    // Number of rows in the list
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    // Return a CategoryCell element: create the list's rows
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: largeCellId, for: indexPath) as! LargeCategoryCell

            return cell
        }
        
        let row =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        
        return row
    }
    
    // Set CategoryCell elements' width and height
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 0 {
            return CGSize(width: view.frame.width, height: 337)
        }
        
        return CGSize(width: view.frame.width, height: 163)
    }
    
    // -- MARK : Missions List Header
    
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! MissionListHeader
//
//        return header
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return .init(width: view.frame.width, height: 100)
//    }
    
    // ---------- SHOW ONBOARDING ------------ //
//    override func viewDidAppear(_ animated: Bool) {
//        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
//        if let obVC = sb.instantiateViewController(withIdentifier: "ObIntroViewController") as? ObIntroViewController {
//            present(obVC, animated: true, completion: nil)
//        }
//    }


}
