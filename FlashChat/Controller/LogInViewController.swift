//
//  LogInViewController.swift
//  FlashChat
//
//  Created by Konstantin on 28/02/2019.
//  Copyright © 2019 Konstantin. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (result, error) in
            
            if error != nil {
                print(error!.localizedDescription)
            } else {
                print("log in is successful")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            
            
        }
        
        
    }
    
    
    
    
}

