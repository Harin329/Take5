//
//  Q2ViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class Q2ViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        b1.setTitle(choice1, for: .normal)
        b2.setTitle(choice2, for: .normal)
        self.view.backgroundColor = UIColor(hue: 0.51, saturation: 0.53, brightness: 0.66, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func q2b1(_ sender: UIButton) {
        first += (10 * Int.random(in: 0 ... 10))
    }
    @IBAction func q2b2(_ sender: UIButton) {
        second += (10 * Int.random(in: 0 ... 10))
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
