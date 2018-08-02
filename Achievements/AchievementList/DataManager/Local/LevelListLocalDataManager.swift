//
//  LevelListLocalDataManager.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/31/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import Foundation
import UIKit

class LevelListLocalDataManager: LevelListLocalDataManagerInputProtocol {
    
    func getLevelList() throws -> [LevelModel] {
        
        let path = Bundle.main.path(forResource: "achievements", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        var levels:[LevelModel] = []
        
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONDecoder().decode(DataFile.self, from: data)
            levels = json.achievements

        } catch {
            print(error)
        }
        
        return levels
    }
    
}
