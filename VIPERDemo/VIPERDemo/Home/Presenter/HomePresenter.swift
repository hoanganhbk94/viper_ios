//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class HomePresenter: HomePresenterProtocol, HomeInteractorOutputProtocol
{
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireFrame: HomeWireFrameProtocol?
    
    init() {}
    
    // MARK: - HomePresenterProtocol
    
    func logoutAccount() {
        let wireframe = HomeWireFrame()
        wireframe.popViewController(self.view as! UIViewController)
    }
    
    func getUserFromDatabase() {
        self.interactor?.getUserFromDatabse()
    }
    
    // MARK: - HomeInteractorOutputProtocol
    
    func returnListUser(data: [UserEntity]) {
        self.view?.showListUser(data)
    }
    
}