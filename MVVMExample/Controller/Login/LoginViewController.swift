//
//  LoginViewController.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import UIKit

final class LoginViewController: BaseViewController {

    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    var loginViewModel: LoginViewModel?
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupUI() {
        title = "LOGIN"
        passwordTextField.isSecureTextEntry = true
    }
    
    func updateUI() {
        usernameTextField.text = loginViewModel?.username
        passwordTextField.text = loginViewModel?.password
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        loginViewModel = LoginViewModel(username: usernameTextField.text ?? "",
                                        password: passwordTextField.text ?? "")
        loginViewModel?.login { (done) in
            if done {
                print("Login Success")
                let scene = UIApplication.shared.connectedScenes.first
                if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
                    sd.changeScreenType(type: .tabbar)
                }
            } else {
                print("Login Failed")
            }
        }
    }
    
}
