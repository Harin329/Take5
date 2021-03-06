//
//  SecondViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit
import GoogleMobileAds

class QuestionViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    
    var bannerViewBottom: GADBannerView!
    var bannerViewTop: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        b1.setTitle(choice1, for: .normal)
        b2.setTitle(choice2, for: .normal)
        self.view.backgroundColor = UIColor(hue: 0.53, saturation: 0.60, brightness: 0.86, alpha: 1)
        // Do any additional setup after loading the view.
        
        bannerViewBottom = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        bannerViewTop = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        
        addBannerViewToViewBottom(bannerViewBottom)
        addBannerViewToViewTop(bannerViewTop)
        
        bannerViewBottom.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerViewBottom.rootViewController = self
        bannerViewBottom.load(GADRequest())
        
        bannerViewTop.adUnitID = "ca-app-pub-3940256099942544/2934735716"
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
    
    @IBAction func q1b1(_ sender: UIButton) {
        first += (10 * Int.random(in: 0 ... 10))
    }
    @IBAction func q1b2(_ sender: UIButton) {
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
