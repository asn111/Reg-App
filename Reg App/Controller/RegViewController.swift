//
//  ViewController.swift
//  Reg App
//
//  Created by Ahsan Iqbal on 29/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import UIKit

class RegViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        firstName.delegate = self
        midName.delegate = self
        lastName.delegate = self
        occup.delegate = self
        jobTitle.delegate = self
        accType.delegate = self
        passWord.delegate = self
        confirmPass.delegate = self
    }
    
    // MARK: Textfield delegates
    // hides keyboard when return pressed
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (string == "\n") {
            textField.resignFirstResponder()
            return false
        }
        return true
    }

    // MARK: Outlets
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var midName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var occup: UITextField!
    @IBOutlet weak var jobTitle: UITextField!
    @IBOutlet weak var accType: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    
    // Mark: Properties
    var dateNtime: String!
    
    // Mark: Actions
    @IBAction func registrBtnPressed(_ sender: Any) {
        // register user
        // if all feilds are filled
        // if passwords matches
    }
    @IBAction func alreadyLoginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "loginHere", sender: self)
    }
    
}

