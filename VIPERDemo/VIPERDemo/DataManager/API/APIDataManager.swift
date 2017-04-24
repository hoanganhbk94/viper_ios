//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

class APIDataManager: APIDataManagerInputProtocol {
    
    init() {
        
    }
    
    // MARK: - API Protocol
    
    func fetchUser(userName: String, password: String, completion: (successed: Bool, data: NSObject?) -> Void) {
        
    }
    
    func getListUser(completion: (successed: Bool, data: [UserEntity]) -> Void) {
        
    }
    
}