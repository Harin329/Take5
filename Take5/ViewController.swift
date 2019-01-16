//
//  ViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-10.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

var first: Int = 0
var second: Int = 0

var choice1: String = ""
var choice2: String = ""




class ViewController: UIViewController, UITextFieldDelegate {

    //Mark: Properties
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var Input1: UITextField!
    @IBOutlet weak var Input2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Input1.delegate = self
        Input2.delegate = self
        self.view.backgroundColor = UIColor(displayP3Red: 0xff, green: 0xe9, blue: 0x00, alpha: 1)
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(3)
        self.view.backgroundColor = UIColor(hue: 0.53, saturation: 0.60, brightness: 0.86, alpha: 1)
        UIView.commitAnimations()
    }
    
    //Mark: Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.tag == 1 {
            Option1.text = textField.text
            first = 0
            choice1 = textField.text!
        } else {
            Option2.text = textField.text
            second = 0
            choice2 = textField.text!
        }
    }
    
    //Mark: Actions
  
}

