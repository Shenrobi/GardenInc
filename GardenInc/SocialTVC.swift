//
//  SocialTVC.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/22/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class SocialTVC: UITableViewController {

    let imageList = ["SocialIcon1.png", "SocialIcon2.png", "SocialIcon3.png", "SocialIcon4.png", "SocialIcon5.png", "SocialIcon6.png",]
    
    let titleList = ["Like us on Facebook", "Follow us on Twitter", "Add us on Google+", "Connect with us on LinkedIn", "Subscribe to our YouTube Channel", "Check out our Website"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Social Links"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SocialTVCell

        // Configure the cell...
        
        cell.socialCellTitle.text = titleList[indexPath.row]
        cell.socialCellImageView.image = UIImage(named: imageList[indexPath.row])

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

 

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showDetail") {
            
            let detailViewController = segue.destination as! SocialVC
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                
                let social = titleList[indexpath.row] as String
                detailViewController.sentData = social
                
            }
            
        }
        
    }

    
    
    

}
