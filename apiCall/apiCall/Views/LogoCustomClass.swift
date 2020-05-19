//
//  LogoCustomClass.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class LogoCustomClass: UIImageView {
    var logoimage: UIImage!
    
    required init(logoimage: UIImage) {
        super.init(frame: .zero)
        self.logoimage = logoimage
        self.setup()
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

}
