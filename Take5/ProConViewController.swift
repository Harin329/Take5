//
//  ProConViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class ProConViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var Pro1: UIButton!
    @IBOutlet weak var Con1: UIButton!
    @IBOutlet weak var Pro2: UIButton!
    @IBOutlet weak var Con2: UIButton!
    @IBOutlet weak var result1: UITextView!
    @IBOutlet weak var result2: UITextView!
    
    var oneEdit: Int = 0
    var twoEdit: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Option1.text = choice1
        Option2.text = choice2
        text1.placeholder = "Pros or Cons for " + choice1
        text2.placeholder = "Pros or Cons for " + choice2
        text1.delegate = self
        text2.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func Pro1(_ sender: UIButton) {
        if let text = text1.text {
            if text == "" {
                return
            }
            result1.text.append("++" + "\(text)\n")
            text1.text = ""
            text1.resignFirstResponder()
            first += 1
        }
    }
    
    @IBAction func Con1(_ sender: UIButton) {
        if let text = text1.text {
            if text == "" {
                return
            }
            result1.text.append("--" + "\(text)\n")
            text1.text = ""
            text1.resignFirstResponder()
            first -= 1
        }
    }
    
    @IBAction func Pro2(_ sender: UIButton) {
        if let text = text2.text {
            if text == "" {
                return
            }
            result2.text.append("++" + "\(text)\n")
            text2.text = ""
            text2.resignFirstResponder()
            second += 1
        }
    }
    
    @IBAction func Con2(_ sender: UIButton) {
        if let text = text2.text {
            if text == "" {
                return
            }
            result2.text.append("--" + "\(text)\n")
            text2.text = ""
            text2.resignFirstResponder()
            second -= 1
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
