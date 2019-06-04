//
//  ProgressView.swift
//  gaiaApp
//
//  Created by Molika THAI on 30/05/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation
import UIKit

class PickleProgressView: UIProgressView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let maskLayerPath = UIBezierPath(roundedRect: bounds, cornerRadius: 6.5)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskLayerPath.cgPath
        layer.mask = maskLayer
    }
}
