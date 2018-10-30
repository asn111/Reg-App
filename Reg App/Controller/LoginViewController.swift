//
//  LoginViewController.swift
//  Reg App
//
//  Created by Ahsan Iqbal on 30/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // hides Back button
        self.navigationItem.setHidesBackButton(true, animated: true)
        // hides Navigation bar
        self.navigationController?.isNavigationBarHidden = true
        // enables swipe left to go back
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        userName_f.delegate  = self
        passWord_f.delegate = self
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
    @IBOutlet weak var userName_f: UITextField!
    @IBOutlet weak var passWord_f: UITextField!
    
    // MARK: Actions
    @IBAction func loginBtnPressed(_ sender: Any) {
        // if username & pass does match
        performSegue(withIdentifier: "showProfile", sender: self)
    }
}
