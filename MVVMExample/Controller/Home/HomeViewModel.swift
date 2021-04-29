//
//  HomeViewModel.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import Foundation

final class HomeViewModel {
    
    var championList = [Champion]()
    
    func fetchData(completion: @escaping () -> ()) {
        APIServices.shared.requestAllChampion { (result) in
            DispatchQueue.main.async {
                self.championList = result
                completion()
            }
        }
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        return championList.count
    }
    
    func cellForRowAt(indexPath: IndexPath) -> Champion {
        return championList[indexPath.row]
    }
    
}
