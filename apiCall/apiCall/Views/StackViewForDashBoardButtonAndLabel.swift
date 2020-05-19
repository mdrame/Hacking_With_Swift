//
//  StackViewForDashBoardButtonAndLabel.swift
//  apiCall
//
//  Created by Mohammed Drame on 5/18/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class StackViewForDashBoardButtonAndLabel: UIStackView {
    var stackDistribution: UIStackView.Distribution!
    var stackSpacing: CGFloat!
    var stackAxis: NSLayoutConstraint.Axis!
    
    required init(stackDistribution: UIStackView.Distribution,stackSpacing: CGFloat, stackAxis: NSLayoutConstraint.Axis ) {
        super.init(frame: .zero)
        self.stackDistribution = stackDistribution
        self.stackSpacing = stackSpacing
        self.stackAxis = stackAxis
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}
