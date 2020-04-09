//
//  ColorizerTextFieldDelegate.swift
//  Text Fields
//
//  Created by Marky Jordan on 4/8/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit
import Foundation

class ColorizerTextFieldDelegate: NSObject, UITextFieldDelegate {

    // MARK: Properties
    
    let colors: [String:UIColor] = [
        "red": UIColor.red,
        "orange":  UIColor.orange,
        "yellow":  UIColor.yellow,
        "green":  UIColor.green,
        "blue":  UIColor.blue,
        "brown":  UIColor.brown,
        "black":  UIColor.black,
        "purple":  UIColor.purple,
        "cyan" : UIColor.cyan,
        "magenta" : UIColor.magenta,
        "white" : UIColor.white
    ]
}
