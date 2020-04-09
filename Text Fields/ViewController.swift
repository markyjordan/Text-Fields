//
//  ViewController.swift
//  Text Fields
//
//  Created by Marky Jordan on 4/6/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Outlets
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var characterCountLabel: UILabel!
    
    // MARK: Text Field Delegate objects
    
    let emojiDelegate = EmojiTextFieldDelegate()
    let colorizerDelegate = ColorizerTextFieldDelegate()
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the character count label to be hidden
        characterCountLabel.isHidden = true
        
        // set the three delegates
        self.textField1.delegate = emojiDelegate
        self.textField2.delegate = colorizerDelegate
        self.textField3.delegate = self
    }

    // MARK: Text Field Delegate Methods
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        // Figure out what the new text will be, if we return true
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        // hide the label if the newText will be an empty string
        self.characterCountLabel.isHidden = (newText.length == 0)
        
        // Write the length of newText into the label
        self.characterCountLabel.text = String(newText.length)
        
        // returning true gives the text field permission to change its text
        return true
    }
}

