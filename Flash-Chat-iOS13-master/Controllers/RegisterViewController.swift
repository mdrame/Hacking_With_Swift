//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
      // ----------------------------------------------------//
     // - - - - - - - - - -  - Sing Up - - - - - - - - - - -//
    // --------------------------------------------------- //
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        // Creating user
        if let email = emailTextfield.text , let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if error != nil {
                    // Specifi the error and and prompt the right warnign sign
                    print(error!.localizedDescription)
                } else {
                    // user
                    print(user!)
                    self.performSegue(withIdentifier: "registerLog", sender: self)
                        // Empty TextFields
                }
            }
        }

}
    
    
    
    
    // If user authentication is not valid show warrHud
    
    
    
    


}
