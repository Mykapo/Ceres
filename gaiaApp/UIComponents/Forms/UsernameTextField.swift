//
//  TextField.swift
//  gaiaApp
//
//  Created by Molika THAI on 30/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation
import UIKit

class PickleUsernameTextField: UITextField {
    
    let bottomBorder = UIView()
    let darkBlueColor = UIColor(named: "pickleColor-darkBlue")!
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 10, right: 0)
    
    override func awakeFromNib() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = darkBlueColor
        
        applyBorderColor(color: darkBlueColor)
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(bottomBorder)
        
        bottomBorder.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomBorder.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomBorder.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomBorder.heightAnchor.constraint(equalToConstant: 1.5).isActive = true
    }
    
    // Setting padding values
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    // Helpers
    func applyBorderColor(color: UIColor) {
        bottomBorder.backgroundColor = color  // Set Border-Color
    }
    
    // MARK: - Text field different states
    
    // Handle error style
    @IBInspectable var hasError: Bool = false {
        didSet {
            if (hasError) {
                bottomBorder.backgroundColor = UIColor.red
            } else {
                bottomBorder.backgroundColor = darkBlueColor
            }
        }
    }
    
    // Handle incorrect characters
    
}
