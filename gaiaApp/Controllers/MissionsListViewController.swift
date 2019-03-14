//
//  MissionsListViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 31/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class MissionsListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
        if let obVC = sb.instantiateViewController(withIdentifier: "ObIntroViewController") as? ObIntroViewController {
            present(obVC, animated: true, completion: nil)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
