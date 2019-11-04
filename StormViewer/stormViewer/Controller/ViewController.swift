//
//  ViewController.swift
//  stormViewer
//
//  Created by Mohammed Drame on 10/30/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

// inherates from UITableViewController
class ViewController: UITableViewController {

    
    @IBOutlet var mainTable: UITableView!
    var dataBase : Array = ["Mohammed", "Oumou", "Amara", "Jenneh", "Mariama", "Abu", "Aisata", "Aly", "Lamine"]
    
    override func viewDidLoad() { // adding more stuff to this function
        super.viewDidLoad() // telling system to run all viewDidLoad code before running mines
        // Do any additional setup after loading the view.
        
        title = "VIEW NAMES"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    } // viewDidload ends here
    
    
 
    
    
    
    // tablview protocle and delegates under
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataBase[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataBase.count
    }
    
    // this function run  if user select a index on the table view 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(indexPath)
        if let vc = storyboard?.instantiateViewController(identifier: "DetailVC") as? DetailViewController {
            vc.seletedName = dataBase[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        } else {
            print("Could not find ViewController ")
        }
        
    }
    
    
    
}

