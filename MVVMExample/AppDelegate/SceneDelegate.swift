//
//  SceneDelegate.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        changeScreenType(type: .login)
    }
    
    func createTabbar() {
        let homeVC = HomeViewController()
        let homeNavi = BaseNavigationController(rootViewController: homeVC)
        homeNavi.tabBarItem = TabbarItem.home.item
        
        let profileVC = ProfileViewController()
        let profileNavi = BaseNavigationController(rootViewController: profileVC)
        profileNavi.tabBarItem = TabbarItem.profile.item
        
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [homeNavi, profileNavi]
        
        window?.rootViewController = tabbarController
    }
    
    func createLogin() {
        let loginVC = LoginViewController()
        let loginNavi = BaseNavigationController(rootViewController: loginVC)
        window?.rootViewController = loginNavi
    }
    
    func changeScreenType(type: ScreenType) {
        switch type {
        case .login:
            createLogin()
        case .tabbar:
            createTabbar()
        }
    }

}
