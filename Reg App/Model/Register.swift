//
//  Register.swift
//  Reg App
//
//  Created by Ahsan Iqbal on 30/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

class Register {
    
    let Pref = Preference()
    // validate all feilds must fill
    // validate name must contail alphabets
    // validate passwords does match
    // save vlaues against keys
    
    func feildsCheck(first: String, mid: String, last: String, ocu: String, job: String, username: String, pass: String, rePass: String, vc: UIViewController) -> Bool {
        var allOK = false
            if(!(first.isEmpty || mid.isEmpty || last.isEmpty || ocu.isEmpty || job.isEmpty || username.isEmpty || pass.isEmpty || rePass.isEmpty)){
                if(checkAlpha(username: username, name: first, mid: mid, last: last, pass: pass, rePasss: rePass, vc: vc)){
                    allOK = true
                    print("SUCCESSS")
                    
                    let dateOfRegistr = Date()
                    let final_date = getTimeInString(date: dateOfRegistr)
                    print("DATEEEEE: \(final_date)")
                    
                    Pref.set(value: "\(first)", currentLevelKey: Consts.currentLevelKeyF)
                    Pref.set(value: "\(mid)", currentLevelKey: Consts.currentLevelKeyM)
                    Pref.set(value: "\(last)", currentLevelKey: Consts.currentLevelKeyL)
                    Pref.set(value: "\(ocu)", currentLevelKey: Consts.currentLevelKeyO)
                    Pref.set(value: "\(job)", currentLevelKey: Consts.currentLevelKeyJ)
                    Pref.set(value: "\(username)", currentLevelKey: Consts.currentLevelKeyU)
                    Pref.set(value: "\(pass)", currentLevelKey: Consts.currentLevelKeyP)
                    Pref.set(value: "\(final_date)", currentLevelKey: Consts.currentLevelKeyT)

                    } else {print("NOT SUCESSS")}
            } else {showAlert(title: Consts.error_t, message: Consts.feildnotEmpty, viewControler: vc)}
        return allOK
        }
    
    func checkAlpha(username: String, name: String, mid: String, last: String, pass: String, rePasss: String, vc: UIViewController) -> Bool
    {
         var isAlpha = false
        if((username.isAlphanumeric(ignoreDiacritics: true))) {
            isAlpha = true
            print("username \(isAlpha)")
            if((name.isAlphanumeric(ignoreDiacritics: true))) {
                isAlpha = true
                print("first \(isAlpha)")
                if((mid.isAlphanumeric(ignoreDiacritics: true))) {
                    isAlpha = true
                    print("mid \(isAlpha)")
                    if((last.isAlphanumeric(ignoreDiacritics: true))) {
                        isAlpha = true
                        print("last \(isAlpha)")
                        // if (pass match){}
                        if(pass == rePasss) {
                            isAlpha = true
                        } else {
                            isAlpha = false
                            showAlert(title: Consts.error_t, message: Consts.pasNotMatch, viewControler: vc)
                        }
                    } else {
                        isAlpha = false
                        showAlert(title: Consts.error_t, message: "Error in \(last). \(Consts.alphaCheck)", viewControler: vc)
                    }
                } else {
                    isAlpha = false
                    showAlert(title: Consts.error_t, message: "Error in \(mid). \(Consts.alphaCheck)", viewControler: vc)
                }
            } else {
                isAlpha = false
                showAlert(title: Consts.error_t, message: "Error in \(name). \(Consts.alphaCheck)", viewControler: vc)
            }
        } else {
            isAlpha = false
            showAlert(title: Consts.error_t, message: "Error in \(username). \(Consts.alphaCheck)", viewControler: vc)
        }
      return isAlpha
    }
}
