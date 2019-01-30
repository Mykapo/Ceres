//
//  Buttons.swift
//  gaiaApp
//
//  Created by Molika THAI on 23/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

extension UIButton {

    func setValidationButton() {
        self.layer.backgroundColor = UIColor(named: "darkBlue")?.cgColor
        self.layer.cornerRadius = 12.0
        self.setTitleColor(UIColor.white, for: .normal)
    }
    
}
