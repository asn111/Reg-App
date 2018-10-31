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

    
    // validate all feilds must fill
    func feildsCheck(first: String, mid: String, last: String, ocu: String, job: String, username: String, pass: String, rePass: String, vc: UIViewController) -> Bool {
        var allOK = false
            if(!(first.isEmpty || mid.isEmpty || last.isEmpty || ocu.isEmpty || job.isEmpty || username.isEmpty || pass.isEmpty || rePass.isEmpty)){
                // validate username exist
                if(username == Preference.shared.get(currentLevelKey: Consts.currentLevelKeyU)){
                    showAlert(title: Consts.error_t, message: Consts.exist, viewControler: vc)
                } else {
                if(checkAlpha(username: username, name: first, mid: mid, last: last, pass: pass, rePasss: rePass, vc: vc)){
                    allOK = true
                    print("SUCCESSS")
                    
                    let dateOfRegistr = Date()
                    let final_date = getTimeInString(date: dateOfRegistr)
                    print("DATEEEEE: \(final_date)")
                    
                    // save vlaues against keys
                    Preference.shared.set(value: "\(first)", currentLevelKey: Consts.currentLevelKeyF)
                    Preference.shared.set(value: "\(mid)", currentLevelKey: Consts.currentLevelKeyM)
                    Preference.shared.set(value: "\(last)", currentLevelKey: Consts.currentLevelKeyL)
                    Preference.shared.set(value: "\(ocu)", currentLevelKey: Consts.currentLevelKeyO)
                    Preference.shared.set(value: "\(job)", currentLevelKey: Consts.currentLevelKeyJ)
                    Preference.shared.set(value: "\(username)", currentLevelKey: Consts.currentLevelKeyU)
                    Preference.shared.set(value: "\(pass)", currentLevelKey: Consts.currentLevelKeyP)
                    Preference.shared.set(value: "\(final_date)", currentLevelKey: Consts.currentLevelKeyT)

                    } else {print("NOT SUCESSS")}
        }
            } else {showAlert(title: Consts.error_t, message: Consts.feildnotEmpty, viewControler: vc)}
        return allOK
        }
    // validate name must contail alphabets
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
                        // validate passwords does match
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
