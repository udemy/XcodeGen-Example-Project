//
//  DemoAppConfiguration.swift
//  XcodeGen-Example-Project
//
//  Created by Joseph Colicchio on 1/8/21.
//

import Foundation

final class ConcreteAppConfiguration: AppConfiguration {

    var appName: String {
        return "Demo App"
    }

    var featureIsSupported: Bool {
        return false
    }
}

