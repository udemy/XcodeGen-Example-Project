//
//  MockAppConfiguration.swift
//  XcodeGen-Example-ProjectTests
//
//  Created by Joseph Colicchio on 1/8/21.
//

import Foundation
@testable import protocol XcodeGen_Example_Project.AppConfiguration

final class MockAppConfiguration: AppConfiguration {

    var appName: String {
        return "Mock App"
    }
}
