//
//  TitleAnimation.swift
//  Flash Chat iOS13
//
//  Created by Mohammed Drame on 12/12/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class TitleAnimation {
    
//
//    override init(frame: CGRect) {
//           super.init(frame: frame)
//       }
//
//       // Story Board Initialization
//       required init?(coder aDecorder: NSCoder) {
//       super.init(coder: aDecorder)
//       // Add custom code here
//
//       }

    // This function append  a loop string with timmer
    func logoDisplaySpeedAndText(view: UILabel, text: String) {
            var counter = 0
            // Looping ovet string
            for charecters in text {
                Timer.scheduledTimer(withTimeInterval: 0.1 * Double(counter), repeats: false) { (timer) in
                 view.text?.append(charecters)
                }
                counter += 1
            }
            
    }
   

    
    
    
    
    
    
    
}
