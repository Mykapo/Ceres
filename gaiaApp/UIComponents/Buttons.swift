//
//  Buttons.swift
//  gaiaApp
//
//  Created by Molika THAI on 23/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation
import UIKit

class PickleButton: UIButton {
    override func awakeFromNib() {
        self.layer.cornerRadius = 12.0
    }
    
    func setEnabledButtonStyle() {
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.backgroundColor = UIColor(named: "pickleColor-darkBlue")?.cgColor
    }
    
    func setDisabledButtonStyle() {
        self.setTitleColor(UIColor(named: "pickleColor-grey"), for: .disabled)
        self.layer.backgroundColor = UIColor(named: "pickleColor-paleGrey")?.cgColor
    }
}
