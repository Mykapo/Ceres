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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(LargeCategoryCell.self, forCellWithReuseIdentifier: largeCellId)
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
    
    // ---------- SHOW ONBOARDING ------------ //
//    override func viewDidAppear(_ animated: Bool) {
//        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
//        if let obVC = sb.instantiateViewController(withIdentifier: "ObIntroViewController") as? ObIntroViewController {
//            present(obVC, animated: true, completion: nil)
//        }
//    }


}
