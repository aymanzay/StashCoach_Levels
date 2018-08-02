//
//  PostListPresenter.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/29/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

class LevelListPresenter: LevelListPresenterProtocol {
    
    weak var view: LevelListViewProtocol?
    var interactor: LevelListInteractorInputProtocol?
    var routing: LevelListRoutingProtocol?
    
    func viewDidLoad() {
        interactor?.getLevelList()
    }
    
}

extension LevelListPresenter: LevelListInteractorOutputProtocol {
    
    func didGetLevels(_ levels: [LevelModel]) {
        view?.showLevels(with: levels)
    }
    
}
