//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class LoginWireFrame: LoginWireFrameProtocol
{
    
    func presentLoginModule(fromView view: UIViewController, data: NSObject?) -> UIViewController {
        // Generating module components
        let view: LoginViewProtocol = LoginView()
        let presenter: protocol<LoginPresenterProtocol, LoginInteractorOutputProtocol> = LoginPresenter()
        let interactor: LoginInteractorInputProtocol = LoginInteractor()
        let APIDataManager: LoginAPIDataManagerInputProtocol = LoginAPIDataManager()
        let localDataManager: LoginLocalDataManagerInputProtocol = LoginLocalDataManager()
        let wireFrame: LoginWireFrameProtocol = LoginWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        return view as! UIViewController
    }
    
    func gotoHomeScreen(view: UIViewController, data: NSObject?) {
        let homeWireFrame: HomeWireFrameProtocol = HomeWireFrame()
        view.navigationController?.pushViewController(homeWireFrame.presentHomeModule(fromView: view, data: data), animated: true)
    }
    
}