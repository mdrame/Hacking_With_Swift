//
//  ViewController.swift
//  wordPlay
//
//  Created by Mohammed Drame on 11/6/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    var allWords = [String]()
    var usedWords = [String]()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let startWordURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWord = try? String(contentsOf: startWordURL) {
                allWords = startWord.components(separatedBy: "\n")
                //test
                print(allWords)
            }
        }
        
        if allWords.isEmpty {
            allWords = ["silkworm"]
            print(allWords)
        }
        
        startGame()
        
        rightBar()

} // viewdidload ends here
    
    func rightBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(promptForAnswer))
    }
    
    @objc func promptForAnswer() {
        let alertController = UIAlertController(title: "\(title!)", message: "Make a word from 👆🏽", preferredStyle: .alert)
        alertController.addTextField()
        let submitAction = UIAlertAction(title: "Submit", style: .default) {
            [weak self, weak alertController] _ in
            guard let answer = alertController?.textFields?[0].text else { return }
            self?.submit(answer)
        }
        
        alertController.addAction(submitAction)
        present(alertController, animated: true)
    }
    
    //submit function take in a a string and
    func submit(_ answer: String) {
        
        // do bunch of checking
        
        usedWords.insert(answer, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        
    }
    
    
    func startGame() {
        title = allWords.randomElement()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        usedWords.removeAll(keepingCapacity: true)
//        tableView.reloadData()
    }
    
    
    // tablevew delegate and datasource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usedWords.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = usedWords[indexPath.row]
//        tableView.reloadData()
        return cell
    }
    
    

}

