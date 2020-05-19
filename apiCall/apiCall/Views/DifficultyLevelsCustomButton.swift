//
//  DifficultyLevelsCustomButton.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class DifficultyLevelsCustomButton: UIButton {
    var title: String!
    var bgColor: UIColor!
    
    required init(title: String, bgColor: UIColor) {
        super.init(frame: .zero)
        self.title = title
        self.bgColor = bgColor
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
        self.layer.cornerRadius = 20
        self.setTitle(title, for: .normal)
        backgroundColor = bgColor
        
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false
    }
    
    
    
    
    
}
