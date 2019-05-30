//
//  StatsViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 30/05/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var progress: PickleProgressView!
    @IBOutlet weak var helpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progress.layoutSubviews()
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
