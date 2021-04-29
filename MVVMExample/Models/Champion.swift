//
//  ChampionList.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation

struct Champion: Codable {
    let name: String
    let image_url: String
}

extension Champion: Displayable {
    var nameLabelText: String {
        return name
    }
    
    var imageURL: URL? {
        guard let url = URL(string: image_url) else {
            return nil
        }
        return url
    }
    
}
