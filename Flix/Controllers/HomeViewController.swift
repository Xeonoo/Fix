//
//  HomeViewController.swift
//  Flix
//
//  Created by Maksymilian Patoń on 08/07/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeFeesTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(ColletionsViewTableViewCell .self, forCellReuseIdentifier: ColletionsViewTableViewCell.identifier )
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeesTable)
        
        homeFeesTable.delegate = self
        homeFeesTable.dataSource = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeesTable.frame = view.bounds
    }
}


extension  HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier:  ColletionsViewTableViewCell.identifier, for: indexPath  ) as? ColletionsViewTableViewCell  else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         return 40 
    }
    
}
