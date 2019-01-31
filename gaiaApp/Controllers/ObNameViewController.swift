//
//  ObNameViewController.swift
//  gaiaApp
//
//  Created by Molika THAI on 29/01/2019.
//  Copyright © 2019 hetic. All rights reserved.
//

import UIKit

class ObNameViewController: UIViewController {
    
    @IBOutlet var nextButton: PickleButton!
    @IBOutlet var nameTextField: PickleUsernameTextField!
    @IBOutlet var errorMessage: PickleFormErrorMessage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isEnabled = false
        nextButton.setDisabledButtonStyle()
        
        errorMessage.text = ""
        nameTextField.addTarget(self, action:#selector(textFieldDidChange(_:)), for:UIControl.Event.editingChanged)
    }
    
    @IBAction func textFieldDidChange(_ sender: UITextField){
        guard let username = nameTextField.text else {
            return
        }
        
        toggleButton(value: username)
    }
    
    @IBAction func nameValidation(sender: UIButton){
        guard let username = nameTextField.text else {
                return
        }
        
//        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        nameTextField.hasError = false
        errorMessage.text = ""
        
        validateInputValue(value: username)
        
//        if let missionListVC = sb.instantiateViewController(withIdentifier: "MissionsListViewController") as? MissionsListViewController {
//            present(missionListVC, animated: true, completion: nil)
//        }
        
    }
    
    func toggleButton(value: String){
        if value.count >= 1 {
            nextButton.isEnabled = true
            nextButton.setEnabledButtonStyle()
        } else {
            nextButton.isEnabled = false
            nextButton.setDisabledButtonStyle()
        }
    }
    
    func validateInputValue(value: String){
        let letters = CharacterSet.letters
        let numbers = CharacterSet.decimalDigits
        
        if value.isEmpty {
            nameTextField.hasError = !nameTextField.hasError
            errorMessage.text = "Votre pseudo est vide. Veuillez entrer un pseudo ayant au moins un caractère."
            
            return
        } else {
            for char in value.unicodeScalars {
                if letters.contains(char) {
                    nameTextField.hasError = !nameTextField.hasError
                    errorMessage.text = "Votre nom d'utilisateur est vide. Veuillez entrer un nom d'utilisateur ayant au moins un caractère."
                    
                    return
                } else if numbers.contains(char) {
                    nameTextField.hasError = !nameTextField.hasError
                    errorMessage.text = "Votre pseudo ne doit pas contenir de caractères spéciaux."
                    
                    return
                }
            }
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
