//
//  ObAvatarViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 23/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class ObAvatarViewController: UIViewController {
    
    @IBOutlet var chooseButton: UIButton!
    @IBOutlet var pageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        chooseButton?.setValidationButton();
    }
    
    var ObAvatarPageViewController: ObAvatarPageViewController?
    
    @IBAction func goToNameChoice(sender: UIButton){
        nextObStepName()
    }
    
    func nextObStepName(){
        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
        if let nextObStepNameVC = sb.instantiateViewController(withIdentifier: "ObNameViewController") as? ObNameViewController {
            present(nextObStepNameVC, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dest = segue.destination
        if let pageViewController = dest as? ObAvatarPageViewController {
            ObAvatarPageViewController = pageViewController
        }
    }
}
