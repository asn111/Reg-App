//
//  Helper Class.swift
//  Reg App
//
//  Created by Ahsan Iqbal on 30/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

func showAlert(title: String, message: String , viewControler: UIViewController){
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    viewControler.present(alert, animated: true)
}

func getTimeInString(date: Date) -> String {
    var time = ""
    let dateFormater = DateFormatter()
    dateFormater.dateFormat = "dd/MM/yyyy"
    dateFormater.dateStyle = .full
    time = dateFormater.string(from: date)
    return time
}