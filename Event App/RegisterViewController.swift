//
//  RegisterViewController.swift
//  Event App
//
//  Created by Matt Wozniczka on 4/7/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet var usernameTextField: UIView!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func registerOnButtonTapped(sender: UIButton) {
        if usernameTextField.text == "" || passwordTextField.text == ""
        {
            showAlert("Please enter username and password", nil, self)
        }
        else
        {
            User.registerNewUser(usernameTextField.text, passwordTextField.text,completed: { (result, error) -> void in
                if error != nil
                {
                    showAlertWithError(error, self)
                }
            
            
        }
    }
    }
    

 

