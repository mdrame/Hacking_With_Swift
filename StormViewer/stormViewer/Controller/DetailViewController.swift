//
//  DetailViewController.swift
//  stormViewer
//
//  Created by Mohammed Drame on 10/31/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var label: UILabel!
    var seletedName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let names = seletedName {
            label.text = names
            title = names
            navigationItem.largeTitleDisplayMode = .never
        }
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
