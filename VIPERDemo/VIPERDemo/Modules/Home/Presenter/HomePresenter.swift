//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class HomePresenter: HomePresenterProtocol, HomeInteractorOutputProtocol {
    
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireFrame: HomeWireFrameProtocol?
    
    var userToken: String
    
    init(token: String) {
        self.userToken = token
    }
    
    // MARK: - Home Presenter Protocol
    
    func logoutAccount() {
        let wireframe = HomeWireFrame()
        wireframe.popViewController(self.view as! UIViewController)
    }
    
    func getUserFromDatabase() {
        self.interactor?.getUserFromDatabse()
    }
    
    func getUserToken() {
        self.view?.updateUserToken(self.userToken)
    }
    
    // MARK: - Home Interactor Protocol
    
    func returnListUser(data: [UserEntity]?) {
        if data != nil {
            self.view?.showListUser(data!)
        }
    }
    
}