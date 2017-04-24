//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class LoginInteractor: LoginInteractorInputProtocol {
    
    weak var presenter: LoginInteractorOutputProtocol?
    var apiDataManager: APIDataManagerInputProtocol?
    var localDatamanager: LocalDataManagerInputProtocol?
    
    init() {}
    
    // MARK: - LoginInteractorInputProtocol
    
    func loginWithUser(userName: String, password: String) {
        self.localDatamanager!.fetchUser(userName, password: password, completion: {(successed, data) -> Void in
            if successed {
                self.presenter?.loginSucess(data as! String)
            } else {
                self.presenter?.logInFailedWithError("Not found")
            }
        })
    }
    
}