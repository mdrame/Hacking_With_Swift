//
//  AppNameLabel.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class AppNameLabel: UILabel {
    // custom initializers
    var title: String!
    
    required init(title: String) {
        super.init(frame: .zero)
        self.title = title
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
        self.text = title
//        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        font = UIFont(name: "PingFangHK-Semibold", size: 30)
        textAlignment = .center
    }
    
    
    
}
