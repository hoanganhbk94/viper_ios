//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

protocol LoginViewProtocol: class
{
    var presenter: LoginPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
    
    func showErrorWithMessage(message: String)
    
}

protocol LoginWireFrameProtocol: class
{
    func presentLoginModule(fromView view: UIViewController, data: NSObject?) -> UIViewController
    /**
     
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
    func gotoHomeScreen(view: UIViewController, data: NSObject?)
}

protocol LoginPresenterProtocol: class
{
    var view: LoginViewProtocol? { get set }
    var interactor: LoginInteractorInputProtocol? { get set }
    var wireFrame: LoginWireFrameProtocol? { get set }
    
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
    
    func didRequestLoginWithUser(userName: String, password: String)
    
}

protocol LoginInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
    func logInFailedWithError(message: String)
    func loginSucess(token: String)
    
}

protocol LoginInteractorInputProtocol: class
{
    var presenter: LoginInteractorOutputProtocol? { get set }
    var APIDataManager: LoginAPIDataManagerInputProtocol? { get set }
    var localDatamanager: LoginLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
    func loginWithUser(userName: String, password: String)
    
}

protocol LoginDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol LoginAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
    
    func fetchUser(userName: String, password: String, completion: (successed: Bool, data: NSObject?) -> Void)
    func getListUser(completion: (successed: Bool, data: [UserEntity]) -> Void)
    
}

protocol LoginLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
    
    func fetchUser(userName: String, password: String, completion: (successed: Bool, data: NSObject?) -> Void)
    func getListUser(completion: (successed: Bool, data: [UserEntity]) -> Void)
}
