//
//  Reg_AppTests.swift
//  Reg AppTests
//
//  Created by Ahsan Iqbal on 29/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import XCTest
@testable import Reg_App

class Reg_AppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let date = Date()
        let printe = getTimeInString(date: date)
        print("PRINTED DATE= \(printe)")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func getTimeInString(date: Date) -> String {
        var time = ""
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd-MM-yyyy"
        dateFormater.dateStyle = .medium
        time = dateFormater.string(from: date)
        return time
    }
}
