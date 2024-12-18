//
//  ConcreteAppConfiguration.swift
//  XcodeGen-Example-Project
//
//  Created by Joseph Colicchio on 1/8/21.
//

import Foundation

final class ConcreteAppConfiguration: AppConfiguration {

    var appName: String {
        return "Real App"
    }

    var featureIsSupported: Bool {
        return true
    }
}
