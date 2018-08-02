//
//  LevelListViewProtocols.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/29/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import Foundation
import UIKit

protocol LevelListViewProtocol: class {
    
    var presenter: LevelListPresenterProtocol? { get set }
    
    //presenter -> view
    func showLevels(with levels: [LevelModel])
}

protocol LevelListRoutingProtocol: class {
    
    static func createlevelListModule() -> UIViewController
    
}

protocol LevelListPresenterProtocol: class {
    
    var view: LevelListViewProtocol? { get set }
    var interactor: LevelListInteractorInputProtocol? { get set }
    var routing: LevelListRoutingProtocol? { get set }
    
    //view -> presenter
    func viewDidLoad()
}

protocol LevelListInteractorInputProtocol: class {
    
    var presenter: LevelListInteractorOutputProtocol? { get set }
    var localDataManager: LevelListLocalDataManagerInputProtocol? { get set }
    
    //presenter -> interactor
    func getLevelList()
}

protocol LevelListInteractorOutputProtocol: class {
    
    //interactor -> presenter
    func didGetLevels(_ levels: [LevelModel])
}

protocol LevelListLocalDataManagerInputProtocol: class {
    
    //interactor -> localdatamanager
    func getLevelList() throws -> [LevelModel]
}

