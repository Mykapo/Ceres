//
//  ObLevelViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 01/05/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class ObLevelViewController: UIViewController {
    
    @IBOutlet var startButton: PickleButton!
    @IBOutlet var slider: PickleSlider!
    @IBOutlet var avatar: UIImageView!
    @IBOutlet var levelName: UILabel!
    @IBOutlet var levelDesc: UILabel!
    
    var levelNames = ["Jeune pousse", "Arbuste", "Grand Chêne"]
    var levelDescs = ["Description Jeune Pousse", "Description Arbuste", "Description Grand Chêne"]
    var selectedLevel: String = ""
    var selectedAvatarSrc: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.setEnabledButtonStyle()

        let startValue = 5
        slider.value = Float(startValue)
        levelName.text = levelNames[0]
        levelDesc.text = levelDescs[0]
        avatar.image = UIImage(named: "plant-purple-pot-pousse")
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let value = slider.value.rounded()
        
        if value < 50 {
//            let avatarSrc = selectedAvatarSrc + "-pousse"
            
            levelName.text = levelNames[0]
            levelDesc.text = levelDescs[0]
            avatar.image = UIImage(named: "plant-purple-pot-pousse")
        } else if value < 80 {
//            let avatarSrc = selectedAvatarSrc + "-arbuste"
            
            levelName.text = levelNames[1]
            levelDesc.text = levelDescs[1]
            avatar.image = UIImage(named: "plant-purple-pot-arbuste")
        } else {
//            let avatarSrc = selectedAvatarSrc + "-chene"
            
            levelName.text = levelNames[2]
            levelDesc.text = levelDescs[2]
            avatar.image = UIImage(named: "plant-purple-pot-chene")
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
