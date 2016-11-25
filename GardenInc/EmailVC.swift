//
//  EmailVC.swift
//  GardenInc
//
//  Created by Terrell Robinson on 11/22/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit
import MessageUI

class EmailVC: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "E-Mail Us"
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            
            messageTextField.resignFirstResponder()
            return false
        }
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sendButtonPressed(_ sender: Any) {
        
        sendEmail()
        
    }
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        
        self.resignFirstResponder()
        
    }
    
    func sendEmail() {
        
        let recipients = ["abc@123.com"]
        let mailComposer: MFMailComposeViewController = MFMailComposeViewController()
        
        mailComposer.mailComposeDelegate = self
        mailComposer.setToRecipients(recipients)
        mailComposer.setSubject(nameTextField.text! + " - Inquiry")
        mailComposer.setMessageBody("Name: \(nameTextField.text!) \n\nEmail: \(emailTextField.text!) \n\nMessage:\n\(messageTextField)", isHTML: false)
        
        mailComposer.navigationBar.tintColor = UIColor.white
        
        self.present(mailComposer, animated: true, completion: nil)
        
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
