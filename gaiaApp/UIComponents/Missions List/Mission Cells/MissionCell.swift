//
//  MissionCell.swift
//  gaiaApp
//
//  Created by Molika THAI on 18/03/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        
        // call superclass' init function
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    // Short mission image
    let shortMissionImg: UIImageView = {
        let ivShort = UIImageView()
        ivShort.image = UIImage(named: "gourde")
        ivShort.contentMode = .scaleAspectFit
//        ivShort.layer.cornerRadius = 16
//        ivShort.layer.masksToBounds = true
        return ivShort
    }()

    
    func setupViews(){
        backgroundColor = UIColor.pickleLavender
        
        addSubview(shortMissionImg)
        shortMissionImg.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
    
}
