//
//  LogoCustomClass.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit
import Foundation

class LogoCustomClass: UIImageView {
    var logoimage: UIImage!
    
    required init(logoimage: UIImage) {
        super.init(frame: .zero)
        self.logoimage = logoimage
        self.setup()
        self.animateLogo()
    }
    
      override init(frame: CGRect) {
          super.init(frame: frame)
        setup()
      }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.image = logoimage
        self.contentMode = .scaleAspectFit
//        backgroundColor = .blue
    }
    
    
    func animateLogo() {
        var duration = 0.5
        
        func right() {
            self.center.x = 20
        }
        
        func left() {
            self.center.x = -100
        }
        
        UIView.animate(withDuration: duration, delay: 0, options: [.curveLinear,.autoreverse, .repeat], animations: {
            right()
        }) { (isCompleted) in
            if isCompleted {
                UIView.animate(withDuration: duration) {
                    left()
                }
            }
        }
        
        
    }

}
