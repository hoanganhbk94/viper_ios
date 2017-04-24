//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import Foundation

class LoginLocalDataManager: LoginLocalDataManagerInputProtocol {
    
    var arr_user: [UserEntity]  = []
    
    init() {
        for i in 0..<5 {
            let user = UserEntity(user_name: "user\(i)", password: "pass\(i)")
            self.arr_user.append(user)
        }
        
    }
    
    func fetchUser(userName: String, password: String, completion: (successed: Bool, data: NSObject?) -> Void) {
        var flag = false
        
        for user in arr_user {
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
        completion(successed: true, data: self.arr_user)
    }
    
}