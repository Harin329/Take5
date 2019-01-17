//
//  PrivacyViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-17.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit

class PrivacyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hue: 0.53, saturation: 0.60, brightness: 0.86, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func privacyURL(_ sender: UIButton) {
        openUrl(urlStr: "https://sites.google.com/view/take5-privacy-policy/home")
    }
    
    func openUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
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
