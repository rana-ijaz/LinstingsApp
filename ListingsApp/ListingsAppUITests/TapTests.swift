//
//  TapTests.swift
//  ListingsApp
//
//  Created by Ijaz on 23/11/2020.
//

import XCTest
@testable import ListingsApp

class TapTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTapForDetail() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //let app = XCUIApplication()
        //app.tables/*@START_MENU_TOKEN@*/.staticTexts["AED 500"]/*[[".cells.staticTexts[\"AED 500\"]",".staticTexts[\"AED 500\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        //app.navigationBars["ListingsApp.ListingDetailView"].buttons["Listings"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
