//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol
{
    
    weak var presenter: HomeInteractorOutputProtocol?
    var APIDataManager: LoginAPIDataManagerInputProtocol?
    var localDatamanager: LoginLocalDataManagerInputProtocol?
    
    init() {
        
    }
    
    // MARK: - HomeInteractorInputProtocol
    
    func getUserFromDatabse() {
        self.APIDataManager?.getListUser({(successed, data) -> Void in
            self.presenter?.returnListUser(data)
        })
    }

}