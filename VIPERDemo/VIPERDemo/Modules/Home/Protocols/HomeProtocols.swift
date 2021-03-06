//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

protocol HomeViewProtocol: class {
    var presenter: HomePresenterProtocol? { get set }
    
    /**
     * Add here your methods for communication PRESENTER -> VIEW
     */
    
    func showListUser(array: [UserEntity])
    func updateUserToken(token: String)
    
}

protocol HomeWireFrameProtocol: class {
    func presentHomeModule(fromView view: UIViewController, data: AnyObject?) -> UIViewController
    
    /**
     * Add here your methods for communication PRESENTER -> WIREFRAME
     */
    
    func popViewController(view: UIViewController)
}

protocol HomePresenterProtocol: class {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? { get set }
    var wireFrame: HomeWireFrameProtocol? { get set }
    
    /**
     * Add here your methods for communication VIEW -> PRESENTER
     */
    
    func logoutAccount()
    func getUserFromDatabase()
    func getUserToken()
    
}

protocol HomeInteractorOutputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> PRESENTER
     */
    
    func returnListUser(data: [UserEntity]?)
    
}

protocol HomeInteractorInputProtocol: class {
    
    var presenter: HomeInteractorOutputProtocol? { get set }
    var apiDataManager: APIDataManagerInputProtocol? { get set }
    var localDatamanager: LocalDataManagerInputProtocol? { get set }
    
    /**
     * Add here your methods for communication PRESENTER -> INTERACTOR
     */
    
    func getUserFromDatabse()
    
}

protocol HomeDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> DATAMANAGER
     */
}

protocol HomeAPIDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
     */
}

protocol HomeLocalDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
     */
}
