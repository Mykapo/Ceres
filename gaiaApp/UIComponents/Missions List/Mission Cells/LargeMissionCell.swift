//
//  LargeMissionCell.swift
//  gaiaApp
//
//  Created by Molika THAI on 02/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class LargeMissionCell: MissionCell {
    
    // Long mission image
    let largeMissionImg: UIImageView = {
        let ivLarge = UIImageView()
        ivLarge.image = UIImage(named: "electronics")
        ivLarge.contentMode = .scaleAspectFit
        //        ivLarge.layer.cornerRadius = 16
        //        ivLarge.layer.masksToBounds = true
        return ivLarge
    }()
    
    // Long mission title
    let missionLabel: UILabel = {
        let label = UILabel()
        label.text = "Éteindre ses appareils électriques"
        label.numberOfLines = 2
        label.textColor = UIColor.pickleDarkBlue
        return label
    }()
    
    override func setupViews() {
        largeMissionImg.translatesAutoresizingMaskIntoConstraints = false
        addSubview(largeMissionImg)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]-20-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": largeMissionImg]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": largeMissionImg]))
    }
}
