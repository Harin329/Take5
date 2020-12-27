//
//  ProConViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit
import GoogleMobileAds

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
    @IBOutlet weak var conTable1: UITextView!
    @IBOutlet weak var conTable2: UITextView!
    
    var oneEdit: Int = 0
    var twoEdit: Int = 0
    
    var bannerViewBottom: GADBannerView!
    var bannerViewTop: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Option1.text = choice1
        Option2.text = choice2
        text1.placeholder = "For " + choice1
        text2.placeholder = "For " + choice2
        result1.text.append("\n\n")
        result2.text.append("\n\n")
        conTable1.text.append("\n\n")
        conTable2.text.append("\n\n")
        text1.delegate = self
        text2.delegate = self
        text1.layer.borderWidth = 1
        text2.layer.borderWidth = 1
        if #available(iOS 13.0, *) {
            text1.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
            text2.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        } else {
            // Fallback on earlier versions
        }
        text1.layer.cornerRadius = 8
        text2.layer.cornerRadius = 8
        Pro1.layer.cornerRadius = 8
        Pro2.layer.cornerRadius = 8
        Con1.layer.cornerRadius = 8
        Con2.layer.cornerRadius = 8
        self.view.backgroundColor = UIColor(hue: 0.53, saturation: 0.60, brightness: 0.86, alpha: 1)
        // Do any additional setup after loading the view.
        
        bannerViewBottom = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        bannerViewTop = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        
        addBannerViewToViewBottom(bannerViewBottom)
        addBannerViewToViewTop(bannerViewTop)
        
        bannerViewBottom.adUnitID = "ca-app-pub-1633693256297531/1647507440"
        bannerViewBottom.rootViewController = self
        bannerViewBottom.load(GADRequest())
        
        bannerViewTop.adUnitID = "ca-app-pub-1633693256297531/2960589114"
        bannerViewTop.rootViewController = self
        bannerViewTop.load(GADRequest())
    }
    
    func addBannerViewToViewBottom(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }
    
    func addBannerViewToViewTop(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .top,
                                relatedBy: .equal,
                                toItem: topLayoutGuide,
                                attribute: .bottom,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
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
            result1.text.append("\(text)\n")
            text1.text = ""
            text1.resignFirstResponder()
            first += (10 * Int.random(in: 0 ... 5))
        }
    }
    
    @IBAction func Con1(_ sender: UIButton) {
        if let text = text1.text {
            if text == "" {
                return
            }
            conTable1.text.append("\(text)\n")
            text1.text = ""
            text1.resignFirstResponder()
            first -= (10 * Int.random(in: 0 ... 5))
        }
    }
    
    @IBAction func Pro2(_ sender: UIButton) {
        if let text = text2.text {
            if text == "" {
                return
            }
            result2.text.append("\(text)\n")
            text2.text = ""
            text2.resignFirstResponder()
            second += (10 * Int.random(in: 0 ... 5))
        }
    }
    
    @IBAction func Con2(_ sender: UIButton) {
        if let text = text2.text {
            if text == "" {
                return
            }
            conTable2.text.append("\(text)\n")
            text2.text = ""
            text2.resignFirstResponder()
            second -= (10 * Int.random(in: 0 ... 5))
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
