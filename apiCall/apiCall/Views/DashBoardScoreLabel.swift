//
//  DashBoardScoreLabel.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class DashBoardScoreLabel: UILabel {
    var title: String!
    
    required  init(title: String) {
        super.init(frame: .zero)
        self.title = title
        setup()
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
        textAlignment = .center
//        backgroundColor = .white
    }
    

}
