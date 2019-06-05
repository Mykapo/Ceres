//
//  AccountViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 05/06/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import Foundation
import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var gif: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gif.loadGif(name: "inscription")
    }
    
}
