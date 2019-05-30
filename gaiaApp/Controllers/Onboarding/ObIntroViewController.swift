//
//  ObIntroViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 23/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class ObIntroViewController: UIViewController {
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: PickleButton!
    @IBOutlet var skipButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func skipOnboarding(sender: UIButton){
        nextObStepAvatar()
    }

    var ObIntroPageViewController: ObIntroPageViewController?
    
    @IBAction func nextOnboardingPage(sender: UIButton){
        if let index = ObIntroPageViewController?.currentIndex {
            switch index {
            case 0:
                ObIntroPageViewController?.nextPage()
            case 1:
                nextObStepAvatar()
            default:
                break
            }
        }
        
        updatePageControl()
    }
    
    // MARK: - Helpers
    
    func updatePageControl() {
        if let index = ObIntroPageViewController?.currentIndex {
            pageControl.currentPage = index
        }
    }
    
    func nextObStepAvatar(){
        let sb = UIStoryboard(name: "Onboarding", bundle: nil)
        if let nextObStepAvatarVC = sb.instantiateViewController(withIdentifier: "ObAvatarViewController") as? ObAvatarViewController {
            present(nextObStepAvatarVC, animated: true, completion: nil)
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let dest = segue.destination
        if let pageViewController = dest as? ObIntroPageViewController {
            ObIntroPageViewController = pageViewController
        }
    }

}
