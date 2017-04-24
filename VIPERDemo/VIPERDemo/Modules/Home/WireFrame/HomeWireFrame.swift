//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class HomeWireFrame: HomeWireFrameProtocol {
    
    // MARK: - Home WireFrame Protocol
    
    func presentHomeModule(fromView view: UIViewController, data: AnyObject?) -> UIViewController {
        // Generating module components
        let view: HomeViewProtocol = HomeView()
        (view as! HomeView).userToken = data as? String
        let presenter: protocol<HomePresenterProtocol, HomeInteractorOutputProtocol> = HomePresenter()
        let interactor: HomeInteractorInputProtocol = HomeInteractor()
        let apiDataManager: APIDataManagerInputProtocol = APIDataManager()
        let localDataManager: LocalDataManagerInputProtocol = LocalDataManager()
        let wireFrame: HomeWireFrameProtocol = HomeWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.apiDataManager = apiDataManager
        interactor.localDatamanager = localDataManager
        
        return view as! UIViewController
    }
    
    func popViewController(view: UIViewController) {
        view.navigationController?.popViewControllerAnimated(true)
    }
    
}