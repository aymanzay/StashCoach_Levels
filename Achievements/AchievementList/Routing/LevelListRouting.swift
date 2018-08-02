//
//  LevelListRouting.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/29/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//
import UIKit

class LevelListRouting: LevelListRoutingProtocol {
    
    //setting up a rootView nav controller for main storyboard
    class func createlevelListModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "navID")
        
        if let view = navController.childViewControllers.first as? LevelsListView {
            let presenter: LevelListPresenterProtocol & LevelListInteractorOutputProtocol = LevelListPresenter()
            let interactor: LevelListInteractorInputProtocol = LevelListInteractor()
            let localDataManager: LevelListLocalDataManagerInputProtocol = LevelListLocalDataManager()
            let routing: LevelListRoutingProtocol = LevelListRouting()
            
            view.presenter = presenter
            
            presenter.view = view
            presenter.routing = routing
            presenter.interactor = interactor
            
            interactor.presenter = presenter
            interactor.localDataManager = localDataManager
            
            return navController
        }
        
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    
}
