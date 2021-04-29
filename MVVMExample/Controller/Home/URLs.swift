//
//  URLs.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation

struct URLs {
    private static var baseURL = "https://api.pandascore.co/lol/"
    
    public static let championsURL = "\(baseURL)champions?token=\(APIInstance.APIToken)"
    
    public static let itemsURL = "\(baseURL)items?token=\(APIInstance.APIToken)"
}
