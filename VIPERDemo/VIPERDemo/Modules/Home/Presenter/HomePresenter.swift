//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class HomePresenter: HomePresenterProtocol, HomeInteractorOutputProtocol {
    
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireFrame: HomeWireFrameProtocol?
    
    init() {}
    
    // MARK: - Home Presenter Protocol
    
    func logoutAccount() {
        let wireframe = HomeWireFrame()
        wireframe.popViewController(self.view as! UIViewController)
    }
    
    func getUserFromDatabase() {
        self.interactor?.getUserFromDatabse()
    }
    
    // MARK: - Home Interactor Protocol
    
    func returnListUser(data: [UserEntity]) {
        self.view?.showListUser(data)
    }
    
}