//
//  Login.swift
//  Reg App
//
//  Created by Ahsan Iqbal on 30/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

class Login {
    
    var username: String!
    var password: String!
    
    func logingUser(userName: String, passWord: String, vc: UIViewController) -> Bool {
        var loginNow = false
        username = Preference.shared.get(currentLevelKey: Consts.currentLevelKeyU)
        password = Preference.shared.get(currentLevelKey: Consts.currentLevelKeyP)
        if(userName == username && passWord == password){
            loginNow = true
        }
        return loginNow
    }
}
