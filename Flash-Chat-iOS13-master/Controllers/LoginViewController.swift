//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

  // ----------------------------------------------------//
 // - - - - - - - - - -  - Sing In - - - - - - - - - - -//
// --------------------------------------------------- //
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { (credential, error) in
                if let error = error {
                    print(error.localizedDescription) //pop label
                } else {
                    print(credential!)
                    
                    self.performSegue(withIdentifier: "loginChat", sender: self)
                        // Empty TextFields
                }
            }
        }
 
    } // buton ends here
    
}
