//
//  APIServices.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation
import Alamofire

struct APIServices {
    public static let shared = APIServices()
    
    private init() {}
    
    func requestAllChampion(completion: @escaping ([Champion]) -> Void ) {
        AF.request(URLs.championsURL)
        .validate()
            .responseDecodable(of: [Champion].self) { (response) in
                guard let champions = response.value else {
                    return
                }
                completion(champions)
        }
    }
}
