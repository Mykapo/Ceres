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
        switch missionType {
            case "energy":
                self.backgroundColor = UIColor.picklePink
                self.textColor = UIColor.white
                self.text = "Energie"
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
    }
}
