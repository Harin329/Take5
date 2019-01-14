//
//  GutViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class GutViewController: UIViewController {
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var timeLeft: UILabel!
    var count: Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Option1.setTitle(choice1, for: .normal)
        Option2.setTitle(choice2, for: .normal)
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GutViewController.update), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func gut1(_ sender: UIButton) {
        first += 5
    }
    @IBAction func gut2(_ sender: UIButton) {
        second += 5
    }
    
    @objc func update() {
        if(count > 0) {
            count -= 1
            timeLeft.text = String(count)
        } else {
             self.performSegue(withIdentifier: "finish", sender: self)
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
