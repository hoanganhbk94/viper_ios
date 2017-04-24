//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation
import UIKit

class LoginAPIDataManager: LoginAPIDataManagerInputProtocol
{
    var array_user: [UserEntity] = []
    
    init() {
        if let path = NSBundle.mainBundle().pathForResource("database", ofType: "plist") {
            if let array_dict: [NSDictionary] = NSArray(contentsOfFile: path) as? [NSDictionary]{
                for dict in array_dict {
                    let user = UserEntity.parseUserEntity(dict)
                    self.array_user.append(user)
                }
            }
        }
        
    }
    
     // MARK: - LoginAPIDataManagerInputProtocol
    
    func fetchUser(userName: String, password: String, completion: (successed: Bool, data: NSObject?) -> Void) {
        var flag = false
        
        for user in array_user {
            if user.user_name == userName && user.password == password {
                let token = "\(userName)xxx"
                completion(successed: true, data: token)
                flag = true
                break
            }
        }
        if !flag {
            completion(successed: false, data: nil)
        }
    }
    
    func getListUser(completion: (successed: Bool, data: [UserEntity]) -> Void) {
        completion(successed: true, data: self.array_user)
    }
    
}