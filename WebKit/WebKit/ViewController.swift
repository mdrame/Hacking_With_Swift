//
//  ViewController.swift
//  WebKit
//
//  Created by Mohammed Drame on 11/2/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    
    
// adding file content to array here
    var list = [String]()
    
    // importing file here
    func importingFile() {
        
        
        if let contentURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let contentInContentURL = try? String(contentsOf: contentURL) {
                list = contentInContentURL.components(separatedBy: "\n")
                }
        } else {
            list = ["File not found"]
                print(list)
    }
        
       
}// importing function ends here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        importingFile()
       
        
    }
    
    
    // table view protocle and delegates
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if list.isEmpty {
            print(" File Found but empty ")
        } else {
            cell.textLabel?.text = list[indexPath.row]
        }
               
       return cell
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    
    
   

}

