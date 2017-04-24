//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class LoginPresenter: LoginPresenterProtocol, LoginInteractorOutputProtocol {
    
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorInputProtocol?
    var wireFrame: LoginWireFrameProtocol?
    
    init() {}
    
    // MARK: - Presenter Protocol
    
    func didRequestLoginWithUser(userName: String, password: String) {
        self.interactor?.loginWithUser(userName, password: password)
    }
    
    // MARK: - Interactor Output Protocol
    
    func logInFailedWithError(message: String) {
        self.view?.showErrorWithMessage(message)
    }
    
    func loginSucess(token: String) {
        self.wireFrame?.gotoHomeScreen(self.view as! UIViewController, data: token)
    }
    
}