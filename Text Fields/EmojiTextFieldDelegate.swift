//
//  EmojiTextFieldDelegate.swift
//  Text Fields
//
//  Created by Marky Jordan on 4/8/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

class EmojiTextFieldDelegate: NSObject, UITextFieldDelegate {

    // MARK: Properties
    
    var translations = [String : String]()
    
    // MARK: Initializer
    
    override init() {
        super.init()
        
        translations["heart"] = "\u{0001F496}"
        translations["fish"] = "\u{E522}"
        translations["bird"] = "\u{E523}"
        translations["frog"] = "\u{E531}"
        translations["bear"] = "\u{E527}"
        translations["dog"] = "\u{E052}"
        translations["cat"] = "\u{E04F}"
    }
}
