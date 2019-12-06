//
//  ViewController.swift
//  wordPlay
//
//  Created by Mohammed Drame on 11/6/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var warningButton = WarningCustombutton()
    // for programmatic UIButtons

    @IBOutlet weak var orange: WarningCustombutton!
   

    @IBAction func buttonPressed(_ sender: WarningCustombutton) {
      // Button Shaking
        orange.shake()
       
     
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    
} // viewdidload ends here
    
    
   
    


    

    
   
    
}

