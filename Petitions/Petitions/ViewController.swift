//
//  ViewController.swift
//  Petitions
//
//  Created by Mohammed Drame on 11/8/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let peittiton = [String]()
   
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
      
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Tittle"
        cell.detailTextLabel?.text = "Description goes here"
        return cell
    }
    

    
  
    
    


}

