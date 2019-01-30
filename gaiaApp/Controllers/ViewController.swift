//
//  ViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 23/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Instantiate onboarding screens
    
    override func viewDidAppear(_ animated: Bool) {
        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
        if let obVC = sb.instantiateViewController(withIdentifier: "ObIntroViewController") as? ObIntroViewController {
            present(obVC, animated: true, completion: nil)
        }
    }


}

