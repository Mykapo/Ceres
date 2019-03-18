//
//  MissionsListViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 31/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionsListViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let rowId = "rowId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(MissionRowCollectionViewCell.self, forCellWithReuseIdentifier: rowId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let row =  collectionView.dequeueReusableCell(withReuseIdentifier: rowId, for: indexPath) as! MissionRowCollectionViewCell
        
        return row
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 140)
    }
    
    // ---------- SHOW ONBOARDING ------------ //
//    override func viewDidAppear(_ animated: Bool) {
//        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
//        if let obVC = sb.instantiateViewController(withIdentifier: "ObIntroViewController") as? ObIntroViewController {
//            present(obVC, animated: true, completion: nil)
//        }
//    }


}
