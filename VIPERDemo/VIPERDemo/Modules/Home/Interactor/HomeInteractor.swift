//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class HomeInteractor: HomeInteractorInputProtocol {
    
    weak var presenter: HomeInteractorOutputProtocol?
    var apiDataManager: APIDataManagerInputProtocol?
    var localDatamanager: LocalDataManagerInputProtocol?
    
    init() {
        
    }
    
    // MARK: - Home Interactor Protocol
    
    func getUserFromDatabse() {
        self.localDatamanager?.getListUser({(successed, data) -> Void in
            self.presenter?.returnListUser(data)
        })
    }
    
}