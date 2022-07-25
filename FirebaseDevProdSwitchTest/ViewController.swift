//
//  ViewController.swift
//  FirebaseDevProdSwitchTest
//
//  Created by Tarsicio Spraggon Hernández on 25/07/2022.
//

import UIKit
import FirebaseAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func testPressed(_ sender: Any) {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemID: "item-id-test",
          AnalyticsParameterItemName: "itme-name-test",
          AnalyticsParameterContentType: "content-type-test",
        ])
        
    }
    
}

