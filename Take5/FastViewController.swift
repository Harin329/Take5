//
//  FastViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class FastViewController: UIViewController {
    @IBOutlet weak var calcFinal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (first >= second) {
            calcFinal.text = choice1
        } else {
            calcFinal.text = choice2
        }
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
