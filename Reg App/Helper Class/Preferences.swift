//
//  Preferences.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 25/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

class Preference {
    
     static let shared = Preference()
    
     var sharedPreferences = UserDefaults.standard
     var value: String!
    
     func set(value: String, currentLevelKey: String) {
        self.value = value
        
        if(currentLevelKey != "") {
        if(currentLevelKey == "firstname"){
        Consts.currentLevelKeyF = currentLevelKey
        sharedPreferences.set(value, forKey: currentLevelKey)
        sharedPreferences.synchronize()
        }
        if(currentLevelKey == "midname"){
            Consts.currentLevelKeyM = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
        if(currentLevelKey == "lastname"){
            Consts.currentLevelKeyL = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
        if(currentLevelKey == "occupation"){
            Consts.currentLevelKeyO = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
        if(currentLevelKey == "jobtitle"){
            Consts.currentLevelKeyJ = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
        if(currentLevelKey == "username"){
            Consts.currentLevelKeyU = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
        if(currentLevelKey == "password"){
            Consts.currentLevelKeyP = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
        if(currentLevelKey == "timeNdate"){
            Consts.currentLevelKeyT = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
      }
    }
     func get(currentLevelKey: String) -> String {
        var returingValue: String!
        
        if(currentLevelKey == ""){
            // hendle error
        }
        if(currentLevelKey != ""){
            if(!(currentLevelKey.isEmpty)){
                returingValue = sharedPreferences.string(forKey: currentLevelKey)
            }
        }
        return returingValue
        
    }
     func removeValues(key: String) {
        sharedPreferences.removeObject(forKey: key)
    }
}
