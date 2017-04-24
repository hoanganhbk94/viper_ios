//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorInputProtocol
{
    weak var presenter: LoginInteractorOutputProtocol?
    var APIDataManager: LoginAPIDataManagerInputProtocol?
    var localDatamanager: LoginLocalDataManagerInputProtocol?
    
    init() {}
    
    // MARK: - LoginInteractorInputProtocol
    
    func loginWithUser(userName: String, password: String) {
//        self.localDatamanager!.fetchUser(userName, password: password, completion: {(successed, data) -> Void in
//            if successed {
//                self.presenter?.loginSucess(data as! String)
//            } else {
//                self.presenter?.logInFailedWithError("Not found")
//            }
//        })
        
        self.APIDataManager?.fetchUser(userName, password: password, completion: {(successed, data) -> Void in
            if successed {
                self.presenter?.loginSucess(data as! String)
            } else {
                self.presenter?.logInFailedWithError("Not found")
            }
        })
    }
    
}