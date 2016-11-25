//
//  PortfolioVC.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/22/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PortfolioVC: UICollectionViewController {
    
    var imageList = ["Portfolio1.jpg", "Portfolio2.jpg", "Portfolio3.jpg", "Portfolio4.jpg", "Portfolio5.jpg", "Portfolio6.jpg",  "Portfolio2.jpg", "Portfolio3.jpg", "Portfolio1.jpg", "Portfolio5.jpg", "Portfolio6.jpg", "Portfolio3.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PortfolioCVCell
    
        // Configure the cell
        
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row])
        cell.layer.borderWidth = 5
        cell.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5).cgColor
    
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionView, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screensize: CGRect = UIScreen.main.bounds // Linked to the screensize
        var widthScreen = 0
        var heightScreen = 0
        
        // Small iPhone
        
        if screensize.width == 320 {
            
            widthScreen = 120
            heightScreen = 120
            
        }
        
        
        // iPhone 6 & 6S
        
        if screensize.width == 375 {
            
            widthScreen = 160
            heightScreen = 160
            
        }
        
        
        // iPhone 6 Plus
        
        if screensize.width == 414 {
            
            widthScreen = 175
            heightScreen = 175
            
        }
        
    
        // iPad Mini
        
        if screensize.width == 768 {
            
            widthScreen = 230
            heightScreen = 230
            
        }
        
        
        // iPad Pro
        
        if screensize.width == 1024 {
            
            widthScreen = 230
            heightScreen = 230
            
        }
        
        return CGSize(width: widthScreen, height: heightScreen)
        
    }
    
    
    


    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
