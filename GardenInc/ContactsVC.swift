//
//  ContactsVC.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/22/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit
import MapKit

class ContactsVC: UIViewController {

    @IBOutlet weak var contactsMapView: MKMapView!
    
    var latitude = 33.757357
    var longitude = -84.387877
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mapLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func directionsButtonPressed(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!)
        
        
    }
    
    @IBAction func callButtonPressed(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "tel://180076921")!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func mapLoad() {
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        contactsMapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnnotation = MKPointAnnotation()
        objectAnnotation.coordinate = pinLocation
        objectAnnotation.title = "Garden Inc."
        objectAnnotation.subtitle = "133 Peachtree St NW, Atlanta, GA 30303"
        self.contactsMapView.addAnnotation(objectAnnotation)
        
    }

}
