//
//  BikramWebview.swift
//  Vimcity
//
//  Created by Josef Myers on 9/29/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class BikramWebview: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "http://www.bikramcharleston.com")
        
        webView.loadRequest(NSURLRequest(URL: URL!))
        
    }
    
    @IBAction func backButtonDidTouch(sender: AnyObject) {
        if(webView.canGoBack) {
            //Go back in webview history
            webView.goBack()
        } else {
            //Pop view controller to preview view controller
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
