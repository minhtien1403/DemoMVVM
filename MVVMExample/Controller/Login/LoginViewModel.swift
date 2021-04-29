//
//  LoginViewModel.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation

final class LoginViewModel {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func login(completion: (Bool) -> () ) {
        if username == "admin" && password == "admin" {
            completion(true)
        } else {
            completion(false)
        }
    }
}
