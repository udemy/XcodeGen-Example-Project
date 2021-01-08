//
//  ViewController.swift
//  XcodeGen-Example-Project
//
//  Created by Joseph Colicchio on 1/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    var configuration: AppConfiguration

    var labelText: String {
        return "This is the \(configuration.appName)"
    }

    var appNameEnv: String {
        return ProcessInfo.processInfo.environment[Constants.appNameKey] ?? "NONE"
    }

    init?(coder: NSCoder, configuration: AppConfiguration) {
        self.configuration = configuration
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        self.configuration = ConcreteAppConfiguration()
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = labelText + "\n" + appNameEnv
    }


}

