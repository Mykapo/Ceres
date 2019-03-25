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
    
    let shortMissionImg: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "gourde")
        iv.contentMode = .scaleAspectFit .center
        return iv
    }()
    
    func setupViews(){
        backgroundColor = UIColor.pickleLavender
        
        addSubview(shortMissionImg)
        shortMissionImg.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        shortMissionImg.layer.cornerRadius = 12
        shortMissionImg.layer.masksToBounds = true
    }
    
}
