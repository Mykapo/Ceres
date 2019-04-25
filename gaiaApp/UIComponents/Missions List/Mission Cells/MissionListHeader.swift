//
//  MissionListHeader.swift
//  gaiaApp
//
//  Created by Molika THAI on 04/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionListHeader: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }

    let viewTitle: UILabel = {
        let title = UILabel()
        title.text = "Missions"
        title.numberOfLines = 1
        title.textColor = UIColor.pickleDarkBlue
        title.font = UIFont(name: UIFont.fontNames(forFamilyName:
            "SF Pro Display")[0], size: 34)
        return title
    }()
    
    func setupViews() {
        viewTitle.translatesAutoresizingMaskIntoConstraints = false
        addSubview(viewTitle)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-24-[v0]-24-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": viewTitle]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-53-[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": viewTitle]))
    }
    
    
}
