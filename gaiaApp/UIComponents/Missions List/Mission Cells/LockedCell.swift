//
//  LockedCell.swift
//  gaiaApp
//
//  Created by Molika THAI on 02/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class LockedCell: MissionCell {
    
    // Locked short mission image
    let lockedMissionImg: UIImageView = {
        let ivLocked = UIImageView()
        ivLocked.image = UIImage(named: "locked")
        ivLocked.contentMode = .center
        
        return ivLocked
    }()
    
    override func setupViews() {
        backgroundColor = UIColor.picklePink
        
        addSubview(lockedMissionImg)
        lockedMissionImg.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
}
