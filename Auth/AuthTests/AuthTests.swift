//
//  AuthTests.swift
//  AuthTests
//
//  Created by Mohsin on 25/12/2014.
//  Copyright (c) 2014 Mohsin. All rights reserved.
//

import UIKit
import XCTest
import Auth

class AuthTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    // we can't do much  without a view on our root View Controller
    func testViewDidLoad()
    {
        // we only have access to this if we import our project above
        let v = ViewController()
        
        
        // assert that the ViewController.view is not nil
        XCTAssertNotNil(v.view, "View Did Not load")
    }
    
}
