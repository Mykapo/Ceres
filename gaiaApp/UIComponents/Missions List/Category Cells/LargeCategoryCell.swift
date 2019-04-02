//
//  MissionLargeCell.swift
//  gaiaApp
//
//  Created by Molika THAI on 01/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class LargeCategoryCell: CategoryCell {
    
    private let largeMissionCellId = "largeMissionCellId"
    
    override func setupViews() {
        super.setupViews()
        
        missionCategory.text = "Challenge 3 jours"
        missionCategory.text = missionCategory.text?.uppercased()
        
        missionsCollectionView.register(LargeMissionCell.self, forCellWithReuseIdentifier: "largeMissionCellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: largeMissionCellId, for: indexPath) as! MissionCell
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: frame.width, height: frame.height - 32)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
