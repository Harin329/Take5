//
//  FastViewController.swift
//  Take5
//
//  Created by Harin Wu on 2019-01-13.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import UIKit
import GoogleMobileAds

class FastViewController: UIViewController {
    @IBOutlet weak var calcFinal: UILabel!
    
    var bannerViewBottom: GADBannerView!
    var bannerViewTop: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hue: 0.53, saturation: 0.60, brightness: 0.86, alpha: 1)
        if (first >= second) {
            calcFinal.text = choice1
        } else {
            calcFinal.text = choice2
        }
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

}
