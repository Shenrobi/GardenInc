//
//  SocialVC.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/22/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class SocialVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var sentData: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = sentData
        
        loadWebView()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadWebView() {
        
        if navigationItem.title == "Like us on Facebook" {
            
            let url = NSURL(string: "http://www.facebook.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
            
        }
        
        if navigationItem.title == "Follow us on Twitter" {
            
            let url = NSURL(string: "http://www.twitter.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
            
        }
        
        if navigationItem.title == "Add us on Google+" {
            
            
            let url = NSURL(string: "http://plus.google.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
        
        if navigationItem.title == "Connect with us on LinkedIn" {
            
            let url = NSURL(string: "http://www.linkedin.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
            
        }
        
        if navigationItem.title == "Subscribe to our YouTube Channel" {
            
            let url = NSURL(string: "http://www.youtube.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
            
        }
        
        if navigationItem.title == "Check out our Website" {
            
            let url = NSURL(string: "http://www.google.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
            
        }
        
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        
        activityIndicator.startAnimating()
        
    }
    
    
    func webViewDidFinishLoad(_ : UIWebView) {
        
        activityIndicator.stopAnimating()
        
    }
    

}
