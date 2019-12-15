//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class WelcomeViewController: UIViewController {

    // Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    // Instances
    let titleAnimation = TitleAnimation()
   
    
    
  // ----------------------------------------------------//
 // - - - - - - - - - -  - ViewDidLoad - - - - - - - - -//
// --------------------------------------------------- //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // call animation on home label
        titleAnimation.logoDisplaySpeedAndText(view: titleLabel, text: "⚡️Flask Chat" )
      
            
        }
       
  
    
    
    @IBAction func register(_ sender: UIButton) {
        performSegue(withIdentifier: "register", sender: self)
       
        
        
    }
    
    @IBAction func login(_ sender: UIButton) {
        performSegue(withIdentifier: "login", sender: self)
      
        
    }
    
    
    

}
