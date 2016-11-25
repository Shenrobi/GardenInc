//
//  ServicesVC.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/22/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class ServicesVC: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UITextView!
    
    var sentDataOne: String!
    var sentDataTwo: String! 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailTitle.text = sentDataOne
        self.navigationItem.title = sentDataOne
        
        detailImageView.image = UIImage(named: sentDataTwo)
        
        detailSegue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func detailSegue() {
        
        if detailTitle.text == "Lawn Mowing" {
            
            detailDescription.text = "We offer a high quality, one-of-a-kind lawn care service for cheap prices!"
            
        }
        
        if detailTitle.text == "Pond Cleaning" {
            
            detailDescription.text = "Have a pond? We'll clean it for you!"
            
        }
        
        if detailTitle.text == "Hedge Trimming" {
            
            detailDescription.text = "Don't have time to trim your hedges? Don't worry we'll do that for you!"
            
        }
        
        if detailTitle.text == "Flower Planting" {
            
            detailDescription.text = "We offer several flower planting options to give your home an inviting look and feel. We'll also come on a bi-weekly basis to upkeep the flowers' looks!"
            
        }
        
        if detailTitle.text == "Landscaping" {
            
            detailDescription.text = "Choose from a wide variety of landscaping options to give your house the proper decor!"
            
        }
        
        if detailTitle.text == "Mulch Delivery" {
            
            detailDescription.text = "We delivery the best mulch for low prices straight to your doorstep!"
            
        }
        
    }

}
