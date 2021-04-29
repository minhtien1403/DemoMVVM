//
//  HomeViewController.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import UIKit

final class HomeViewController: BaseViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var homeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupUI() {
        title = "Home"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(cellType: HomeCell.self)
    }
    
    override func setupData() {
        homeViewModel.fetchData {
            self.tableView.reloadData()
        }
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(homeViewModel.numberOfRowsInSection(section: section))
        return homeViewModel.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as HomeCell
        cell.binding(champion: homeViewModel.championList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
}
