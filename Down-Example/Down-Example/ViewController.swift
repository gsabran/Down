//
//  ViewController.swift
//  Down-Example
//
//  Created by Keaton Burleson on 7/1/17.
//  Copyright © 2017 down. All rights reserved.
//

import UIKit
import Down

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let downView = try? DownView(frame: self.view.bounds, markdownString: markdownString, didLoadSuccessfully: {
            // Optional callback for loading finished
            print("Markdown was rendered.")
        }) else { return }
        view.addSubview(downView)
    }
    
    fileprivate let markdownString = """
    ## Down
    [![Build Status](https://circleci.com/gh/gsabran/Down/tree/develop.svg?style=svg)](https://circleci.com/gh/gsabran/Down/tree/develop)
    [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/iwasrobbed/Down/blob/master/LICENSE)
    [![CocoaPods](https://img.shields.io/cocoapods/v/Down.svg?maxAge=10800)]()
    [![Swift 6.4](https://img.shields.io/badge/language-Swift%206.4-blue.svg)](https://swift.org)
    [![macOS](https://img.shields.io/badge/OS-macOS-orange.svg)](https://developer.apple.com/macos/)
    [![iOS](https://img.shields.io/badge/OS-iOS-orange.svg)](https://developer.apple.com/ios/)
    [![tvOS](https://img.shields.io/badge/OS-tvOS-orange.svg)](https://developer.apple.com/tvos/)
    [![Coverage Status](https://coveralls.io/repos/github/iwasrobbed/Down/badge.svg?branch=master)](https://coveralls.io/github/iwasrobbed/Down?branch=master)
    
    Blazing fast Markdown rendering in Swift, built upon [cmark](https://github.com/jgm/cmark).
    
    Is your app using it? [Let us know!](mailto:rob@robphillips.me)
    
    #### Maintainers
    
    - [Rob Phillips](https://github.com/iwasrobbed)
    - [Keaton Burleson](https://github.com/128keaton)
    - [Other contributors](https://github.com/iwasrobbed/Down/graphs/contributors) 🙌
    
    ### Installation
    
    The package uses Swift tools version 6.0 and Swift 5 language mode. It is built and tested with Xcode 27.1 and the Swift 6.4 compiler.
    
    Quickly install using [CocoaPods](https://cocoapods.org):
    
    ```ruby
    pod 'Down'
    ```
    
    Or [Carthage](https://github.com/Carthage/Carthage):
    
    ```
    github "iwasrobbed/Down"
    ```
    Due to limitations in Carthage regarding platform specification, you need to define the platform with Carthage.
    
    e.g.
    
    ```carthage update --platform iOS```
    
    Or manually install:
    
    1. Clone this repository
    2. Build the Down project
    3. Add the resulting framework file to your project
    4. ?
    5. Profit
    """

}
