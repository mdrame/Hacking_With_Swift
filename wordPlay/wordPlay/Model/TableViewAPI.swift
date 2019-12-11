//
//  tableViewAPI.swift
//  wordPlay
//
//  Created by Mohammed Drame on 12/10/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation
import UIKit


class TableViewAPI {
    
    var image: UIColor
    var title: String
    
    init(image: UIColor, title: String) {
        self.image = image
        self.title = title
    }
    
    
    
    
}

class DataSet  {
    
    static let staticInstance = DataSet()
    
    // function is returning a list
    func apiList() -> [TableViewAPI] {
        
        var api: [TableViewAPI] = [] // empty dictionary of type TableViewApi
    
         let firstSet = TableViewAPI(image: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) , title: "TRASH")
         let secondSet = TableViewAPI(image: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), title: "FILE")
    
    
        // Appending api array
        api.append(firstSet)
        api.append(secondSet)
    
        return api
   
    }


}
   



