 //
//  WarningCustombutton.swift
//  wordPlay
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class WarningCustombutton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        // Programmatic Init
        
    }
    
    
    
    required init?(coder aDecorder: NSCoder) {
        super.init(coder: aDecorder)
        // Story Borad Init
        shadowStuff() // running funtion because Button was created from the storyBoard
    }
    
    
   private func shadowStuff() {

        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
        layer.shadowOffset = CGSize(width: 2.0, height: 2.0) // x and y of shadow
        layer.shadowOpacity = 20 // Brightness of shadow
        layer.shadowRadius = 20 // weight & Heigh of shadow
        layer.masksToBounds = true
        clipsToBounds = false
    }
    
    
    func shake() {
        // shaking
        print("Shaking")
    }
    
    
    
    
    
    
    
    
}
