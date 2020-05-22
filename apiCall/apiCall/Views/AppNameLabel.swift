//
//  AppNameLabel.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit
import Foundation

class AppNameLabel: UILabel {
    // custom initializers
    var title: String!
    
    required init(title: String) {
        super.init(frame: .zero)
        self.title = title
        self.setup()
        logoDisplaySpeedAndText(view: self)
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.text = title
//        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        font = UIFont(name: "AvenirNextCondensed-Heavy", size: 40)
        textAlignment = .center
        textColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }
    
    
    // MARK: labbel animation
       func logoDisplaySpeedAndText(view: UILabel) {
           var counter = 0
           // Looping ovet string
           for charecters in "Ultimate Brain Trainer" {
               Timer.scheduledTimer(withTimeInterval: 0.1 * Double(counter), repeats: false) { (timer) in
                   view.text?.append(charecters)
               }
               counter += 1
           }
           
       }
    
    
    
}
