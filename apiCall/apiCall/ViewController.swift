//
//  ViewController.swift
//  apiCall
//
//  Created by Mohammed Drame on 12/11/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      

        
        
    }
    
    
    
    @IBAction func unWindToHome(_ sender: UIStoryboardSegue){
        
    }
    
    @IBAction func buttenPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "second", sender: self)
    }
    
    
    


}

