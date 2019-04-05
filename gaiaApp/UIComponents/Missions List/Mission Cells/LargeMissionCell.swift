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
    
    let missionTag: UILabel = {
        let tag = UILabel()
        tag.applyMissionTagStyle(missionType: "energy")
        return tag
    }()
    
    // Long mission title
    let missionLabel: UILabel = {
        let label = UILabel()
        label.text = "Éteindre ses appareils électriques"
        label.numberOfLines = 2
        label.textColor = UIColor.pickleDarkBlue
        label.font = UIFont(name: UIFont.fontNames(forFamilyName:
            "SF Pro Display")[1], size: 19)
        return label
    }()
    
    
    override func setupViews() {
        largeMissionImg.translatesAutoresizingMaskIntoConstraints = false
        missionTag.translatesAutoresizingMaskIntoConstraints = false
        missionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(largeMissionImg)
        addSubview(missionTag)
        addSubview(missionLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-24-[v0]-24-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": largeMissionImg]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-24-[tag]-24-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["tag": missionTag]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-24-[label]-24-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["label": missionLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0][tag][label]-25-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": largeMissionImg, "tag": missionTag, "label": missionLabel]))
    }
}
