//
//  DetailViewController.swift
//  wordPlay
//
//  Created by Mohammed Drame on 12/11/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // outlet
    @IBOutlet weak var labelOulet: UILabel!
    
    // variables
    var dataRecived: TableViewAPI?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let goodData =  dataRecived {
            labelOulet.text = goodData.title
            labelOulet.backgroundColor = UIColor(named: "\(goodData.image)")
//            print(labelOulet.backgroundColor)
        } else {
            print(" No data pass ")
        }
    }
        // Do any additional setup after loading the view.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
