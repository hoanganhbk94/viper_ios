//
// Created by VIPER
// Copyright (c) 2017 VIPER. All rights reserved.
//

import UIKit

struct UserEntity {
    
    var user_name: String = ""
    var password: String = ""
    
    init() {}
    
    init(user_name: String, password: String) {
        self.user_name = user_name
        self.password = password
    }
    
    static func parseUserEntity(dict: NSDictionary) -> UserEntity {
        var user = UserEntity()
        user.user_name = dict.getStringValueForKey("user_name")
        user.password = dict.getStringValueForKey("password")
        
        return user
    }
    
}