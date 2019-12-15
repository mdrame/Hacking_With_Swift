//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase



class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Hide back button on navigation so user can't back
        navigationItem.hidesBackButton = true

    }
    
    
      // ----------------------------------------------------//
     // - - - - - - - - - -  - Send Message - - - - - - - - //
    // --------------------------------------------------- //
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
        
        
    }
    
    
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        do {
          try Auth.auth().signOut()
            // Send user back to root redictory
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
        
        
        
        
    }
    
}
