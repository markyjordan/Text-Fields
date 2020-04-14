//
//  RandomColorDelegate.swift
//  Text Fields
//
//  Created by Marky Jordan on 4/14/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import Foundation
import UIKit

// MARK: RandomColorDelegate: NSObject, UITextFieldDelegate

class RandomColorDelegate: NSObject, UITextFieldDelegate {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    // generate random color
    func generateRandomColor() -> UIColor {
        let randomIndex = Int.random(in: 0..<colors.count)
        return colors[randomIndex]
    }
    
    // implement UITextFieldDelegate method
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = generateRandomColor()
        return true
    }
}
