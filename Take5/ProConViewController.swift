//
//  ProConViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class ProConViewController: UIViewController {
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var table1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Option1.text = choice1
        Option2.text = choice2
        text1.placeholder = "Pros or Cons for " + choice1
        text2.placeholder = "Pros or Cons for " + choice2
        // Do any additional setup after loading the view.
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
