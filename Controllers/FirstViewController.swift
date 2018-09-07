//
//  FirstViewController.swift
//  Coding
//
//  Created by zero on 9/6/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    // Properties
    var userAge = -1
    
        // Conections
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.updateLabel()
        
    }
    
    //MARK:- Methods
    
    // Keyboard Dismissal
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        print("You Pressed Done")
        if let textImput = textField.text {
            print(textImput)
        }
        
        return true
    }
    
    // Slider Method
    @IBAction func sliderAgeMoved(_ sender: UISlider) {
        self.updateLabel()
        }
    
    // Update Label
    func updateLabel() {
        self.userAge = Int(self.sliderAge.value)
        self.labelAge.text = String(self.userAge)
    }

}

