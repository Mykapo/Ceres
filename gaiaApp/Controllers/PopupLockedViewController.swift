//
//  PopupLockedViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 05/04/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class PopupLockedViewController: UIViewController {
    
    @IBOutlet var backButton: PickleButton!
    @IBOutlet var popup: UIView!
    
    let hidden = false

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.setupPopup()
    }
    
    func setupPopup(){
        backButton.setEnabledButtonStyle()
        backButton.setTitle("Revenir aux missions", for: .normal)
        
        popup.backgroundColor = UIColor.white
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
