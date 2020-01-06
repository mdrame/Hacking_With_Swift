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
    
    
    @IBOutlet weak var barOutlet: UIView!
    @IBOutlet weak var redeemPizzaOutlet: UIButton!
    @IBOutlet weak var barCountOutlet: UILabel!
    @IBOutlet weak var ernPointCount: UILabel!
    
   
    
    // computed proptety observer
    var pizzaPoints: CGFloat = 0{
         willSet {
            
            barOutlet.frame.size.width = CGFloat(newValue)
        }
    }
    
   
    
    
    
    
    
    
    @IBAction func unWindToHome(_ sender: UIStoryboardSegue){
        
    }
    
    
    
    
    
    @IBAction func buttenPressed(_ sender: UIButton) {
        

    pizzaPoints += 50
        ernPointCount.text = " + \(pizzaPoints)"
    print(pizzaPoints)
        barCountOutlet.text = "Points left to redeem: \(250 -  pizzaPoints)"
    
        if pizzaPoints == 250 {
            redeemPizzaOutlet.isHidden = false
             barCountOutlet.text = "Contratulation Redeem Pizza"
            // unhide Redime button
        }


}
    
    
    @IBAction func redeemPizzaPress(_ sender: UIButton) {
        pizzaPoints = 0
        redeemPizzaOutlet.isHidden = true
        barCountOutlet.text = "Points left to redeem: \(250 -  pizzaPoints)"
    }
    



}

