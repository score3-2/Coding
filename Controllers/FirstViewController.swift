//
//  FirstViewController.swift
//  Coding
//
//  Created by zero on 9/6/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        print("You Pressed Done")
        
        if let textImput = textField.text {
            print(textImput)
        }
        
        return true
    }


}

