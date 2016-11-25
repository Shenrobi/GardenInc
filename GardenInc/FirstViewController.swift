//
//  FirstViewController.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/21/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func servicesButtonPressed(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 2
        
    }
    
    @IBAction func portfolioButtonPressed(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 3

        
    }
    
    @IBAction func aboutUsButtonPressed(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 1

        
    }
    
    @IBAction func contactUsButtonPressed(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 4

        
    }
    
    
    
    
    
    
    

}

