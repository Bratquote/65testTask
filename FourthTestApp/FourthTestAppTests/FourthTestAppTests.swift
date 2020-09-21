//
//  FourthTestAppTests.swift
//  FourthTestAppTests
//
//  Created by Timur Karimov on 18.09.2020.
//

import XCTest
@testable import FourthTestApp



class FourthTestAppTests: XCTestCase {
    var presenter: MainPresenterImpl!

    override func setUpWithError() throws {
        presenter = MainPresenterImpl(view: MainViewController())
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testValidEmails() throws {
        // 1. given
        let list = EmailTestAsset.validEmails
        
        // 2. when
        var isTrue: [Bool] = []
        for i in list {
            isTrue.append(presenter.isValidEmail(i))
        }
        
        
        // 3. then
        for i in 0..<isTrue.count {
        XCTAssertTrue(isTrue[i], "Not valid email \(list[i])")
        }
    }
    
    func testInalidEmails() throws {
        // 1. given
        let list = EmailTestAsset.invalidEmails
        
        // 2. when
        var isTrue: [Bool] = []
        for i in list {
            isTrue.append(presenter.isValidEmail(i))
        }
        
        
        // 3. then
        for i in 0..<isTrue.count {
        XCTAssertFalse(isTrue[i], "Valid email \(list[i])")
        }
    }
    
    
    func testInvalidLogins() throws {
        // 1. given
        let list = EmailTestAsset.invalidLogins
        
        // 2. when
        var isTrue: [Bool] = []
        for i in list {
            isTrue.append(presenter.isValidLogin(i))
        }
        
        
        // 3. then
        for i in 0..<isTrue.count {
        XCTAssertFalse(isTrue[i], "Valid login \(list[i])")
        }
    }
    
    
    func testValidLogins() throws {
        // 1. given
        let list = EmailTestAsset.validLogins
        
        // 2. when
        var isTrue: [Bool] = []
        for i in list {
            isTrue.append(presenter.isValidLogin(i))
        }
        
        
        // 3. then
        for i in 0..<isTrue.count{
        XCTAssertTrue(isTrue[i], "Invalid login \(list[i])")
        }
    }
    
    
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
