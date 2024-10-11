//
//  XCC_Jamf_TestUITests.swift
//  XCC-Jamf-TestUITests
//
//  Created by Camden Webster on 10/11/24.
//

import XCTest

final class XCC_Jamf_TestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testButton() throws {
        // Given the app has been launched
        let app = XCUIApplication()
        app.launch()
        
        
        
        // And the text in the app reads "Hello World!"
        XCTAssertEqual(app.windows.firstMatch.staticTexts["text"].value as! String, "Hello World!")
        
        // When a user clicks the "Click me!" button
        app.windows.firstMatch.buttons["button"].click()
        
        // Then the text displayed in the window should change from "Hello World!" to "Button was clicked."
        XCTAssertEqual(app.windows.firstMatch.staticTexts["text"].value as! String, "Button was clicked.")
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
