//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit
import Alamofire

class APIDataManager: APIDataManagerInputProtocol {
    
    let URL = "https://raw.githubusercontent.com/hoanganhbk94/viper_ios/master/database.json"
    
    init() {
        
    }
    
    // MARK: - API Protocol
    
    func fetchUser(userName: String, password: String, completion: (successed: Bool, data: NSObject?) -> Void) {
        
    }
    
    func getListUser(completion: (successed: Bool, data: [UserEntity]?) -> Void) {
        Alamofire.request(.GET, self.URL, parameters: nil)
            .responseJSON { response in
                if response.result.error == nil {
                    let arrayItem: [NSDictionary] = response.result.value as! [NSDictionary]
                    var array_user: [UserEntity] = []
                    
                    for user in arrayItem {
                        let item = UserEntity.parseUserEntity(user)
                        array_user.append(item)
                    }
                    completion(successed: true, data: array_user)
                } else {
                    completion(successed: false, data: nil)
                }
        }
    }
    
}