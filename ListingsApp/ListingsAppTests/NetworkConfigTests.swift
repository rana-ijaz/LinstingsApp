//
//  NetworkConfigTests.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import XCTest
@testable import ListingsApp

class NetworkConfigTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testBaseURL() {
        
        XCTAssertNotNil(NetworkConfiguration.baseURL())
    }
}
