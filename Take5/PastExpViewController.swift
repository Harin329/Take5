//
//  PastExpViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class PastExpViewController: UIViewController {
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var oneHcounter: UILabel!
    @IBOutlet weak var oneH: UIStepper!
    @IBOutlet weak var oneMcounter: UILabel!
    @IBOutlet weak var oneM: UIStepper!
    @IBOutlet weak var oneBcounter: UILabel!
    @IBOutlet weak var oneB: UIStepper!
    @IBOutlet weak var twoHcounter: UILabel!
    @IBOutlet weak var twoH: UIStepper!
    @IBOutlet weak var twoMcounter: UILabel!
    @IBOutlet weak var twoM: UIStepper!
    @IBOutlet weak var twoBcounter: UILabel!
    @IBOutlet weak var twoB: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Option1.text = choice1
        Option2.text = choice2
        self.view.backgroundColor = UIColor(hue: 0.53, saturation: 0.60, brightness: 0.86, alpha: 1)
        // Do any additional setup after loading the view.
    }
    @IBAction func hLive(_ sender: UIStepper) {
        let oneHint: Int = Int(oneH!.value)
        oneHcounter.text = String(oneHint)
        first += (oneHint * (20 * Int.random(in: 0 ... 10)))
    }
    
    @IBAction func oneMlive(_ sender: UIStepper) {
        let oneMint: Int = Int(oneM!.value)
        oneMcounter.text = String(oneMint)
        first += (oneMint * (10 * Int.random(in: 0 ... 10)))
    }
    
    @IBAction func oneBlive(_ sender: UIStepper) {
        let oneBint: Int = Int(oneB!.value)
        oneBcounter.text = String(oneBint)
        first -= (oneBint * (10 * Int.random(in: 0 ... 10)))
    }
    @IBAction func twoHlive(_ sender: UIStepper) {
        let twoHint: Int = Int(twoH!.value)
        twoHcounter.text = String(twoHint)
        second += (twoHint * (20 * Int.random(in: 0 ... 10)))
    }
    @IBAction func twoMlive(_ sender: UIStepper) {
        let twoMint: Int = Int(twoM!.value)
        twoMcounter.text = String(twoMint)
        second += (twoMint * (10 * Int.random(in: 0 ... 10)))
    }
    @IBAction func twoBlive(_ sender: UIStepper) {
        let twoBint: Int = Int(twoB!.value)
        twoBcounter.text = String(twoBint)
        second -= (twoBint * (10 * Int.random(in: 0 ... 10)))
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
