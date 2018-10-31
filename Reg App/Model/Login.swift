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
            
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyF))
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyM))
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyL))
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyO))
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyJ))
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyU))
            profileData.append(Preference.shared.get(currentLevelKey: Consts.currentLevelKeyT))

                profileNames.append("First Name:")
                profileNames.append("Middle Name:")
                profileNames.append("Lastname Name:")
                profileNames.append("Ocupation")
                profileNames.append("Job Title:")
                profileNames.append("Username:")
                profileNames.append("First Name:")
                profileNames.append("Registration Date:")
            
        }
        return loginNow
    }
}
