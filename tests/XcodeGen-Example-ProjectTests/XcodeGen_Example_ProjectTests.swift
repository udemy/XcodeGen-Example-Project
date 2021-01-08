//
//  XcodeGen_Example_ProjectTests.swift
//  XcodeGen-Example-ProjectTests
//
//  Created by Joseph Colicchio on 1/8/21.
//

import XCTest
@testable import XcodeGen_Example_Project

extension MockAppConfiguration: AppConfiguration {}

class XcodeGen_Example_ProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let configuration: MockAppConfiguration = .init()
        let viewController: ViewController? = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController { (coder) -> ViewController? in
            return ViewController(coder: coder, configuration: configuration)
        }

        XCTAssertEqual(viewController?.labelText, "This is the Mock App")
        XCTAssertEqual(viewController?.appNameEnv, "NONE")
        XCTAssertTrue(viewController?.configuration.featureIsSupported ?? false)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
