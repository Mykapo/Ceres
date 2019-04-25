//
//  Labels.swift
//  gaiaApp
//
//  Created by Molika THAI on 02/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

extension UILabel {
    
    func applyMissionTagStyle(missionType: String) {
        self.font = UIFont(name: UIFont.fontNames(forFamilyName:
            "SF Pro Display")[0], size: 11)
        self.layer.cornerRadius = 4.0
        
        switch missionType {
            case "energy":
                self.backgroundColor = UIColor.picklePurple
                self.textColor = UIColor.white
                self.text = "Énergie"
            case "waste":
                self.backgroundColor = UIColor.pickleLavender
                self.textColor = UIColor.pickleDarkBlue
                self.text = "Déchets"
            case "food":
                self.backgroundColor = UIColor.pickleGreen
                self.textColor = UIColor.pickleDarkBlue
                self.text = "Alimentation"
            default:
                self.backgroundColor = UIColor.pickleGrey
                self.textColor = UIColor.pickleDarkBlue
                self.text = "Pickle"
        }
        
        self.text = self.text?.uppercased()
    }
}
