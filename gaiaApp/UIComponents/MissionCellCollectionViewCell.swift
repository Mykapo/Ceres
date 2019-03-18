//
//  MissionCellCollectionViewCell.swift
//  gaiaApp
//
//  Created by Molika THAI on 18/03/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionCellCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        
        // call superclass' init function
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        backgroundColor = UIColor.yellow
    }
    
}
