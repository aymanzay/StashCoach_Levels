 //
//  LevelsListView.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/29/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import UIKit

class LevelsListView: UIViewController {

    @IBOutlet var levelsTable: UITableView!
    var presenter: LevelListPresenterProtocol?
    var levelsList: [LevelModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        levelsTable.tableFooterView = UIView()
    }
    
}

extension LevelsListView: LevelListViewProtocol {
    
    func showLevels(with levels: [LevelModel]) {
        levelsList = levels
        levelsTable.reloadData()
    }
}

extension LevelsListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "levelCell") as! LevelTableViewCell
        
        tableView.backgroundColor = UIColor.white
        
        cell.layer.cornerRadius = 40
        cell.layer.masksToBounds = true

        cell.layer.borderWidth = 10
        cell.layer.borderColor = tableView.backgroundColor?.cgColor
        
        let level = levelsList[indexPath.row]
        cell.set(forLevel: level)
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return levelsList.count
    }
    
}
