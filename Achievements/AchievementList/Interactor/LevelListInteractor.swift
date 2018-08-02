//
//  LevelListInteractor.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/29/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

class LevelListInteractor: LevelListInteractorInputProtocol {

    weak var presenter: LevelListInteractorOutputProtocol?
    var localDataManager: LevelListLocalDataManagerInputProtocol?
    
    func getLevelList() {
        do {
            if let levelList = try localDataManager?.getLevelList() {
                if levelList.isEmpty {
                    presenter?.didGetLevels([])
                } else {
                    presenter?.didGetLevels(levelList)
                }
            }
        } catch {
            presenter?.didGetLevels([])
        }
    }
}
