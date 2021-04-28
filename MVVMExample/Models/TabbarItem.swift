//
//  TabbarItem.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation
import UIKit

enum TabbarItem {
    case home
    case profile
    
    var item: UITabBarItem {
        switch self {
        case .home:
            return UITabBarItem(title: "Home",
                                image: UIImage(systemName: "house"),
                                selectedImage: UIImage(systemName: "house.fill"))
        case .profile:
            return UITabBarItem(title: "Home",
                                image: UIImage(systemName: "person.circle"),
                                selectedImage: UIImage(systemName: "person.circle.fill"))
        }
    }
}
