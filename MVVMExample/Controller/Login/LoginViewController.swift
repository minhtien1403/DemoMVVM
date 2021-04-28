//
//  LoginViewController.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import UIKit

final class LoginViewController: BaseViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupUI() {
        title = "LOGIN"
        passwordTextField.isSecureTextEntry = true
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
    }
    
}
