//
//  customeCell.swift
//  wordPlay
//
//  Created by Mohammed Drame on 12/10/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class CustomeCell: UITableViewCell {
    

    @IBOutlet weak var name: UILabel!
    
     
//    let tableViewApi = TableViewAPI
    
    // updating UI by accessing api class
    func updateTableView(api: TableViewAPI) {
        name.backgroundColor = api.image
        name.text = "\(api.title)"
    }
    

}
