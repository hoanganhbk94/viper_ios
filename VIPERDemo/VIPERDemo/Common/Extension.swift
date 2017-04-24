//
//  Extension.swift
//  VIPERDemo
//
//  Created by anh on 4/21/17.
//  Copyright © 2017 anh. All rights reserved.
//

import UIKit

extension NSDictionary{
    
    func getStringValueForKey(key : AnyObject) -> String{
        let val = self.objectForKey(key)
        if val != nil && val!.isKindOfClass(NSString.self) {
            return val as! String
        }
        return ""
    }
    
    func getIntValueForKey(key : AnyObject) -> Int{
        let val = self.objectForKey(key)
        if val != nil && val!.isKindOfClass(NSNumber.self) {
            return val as! Int
        }
        if val != nil && val!.isKindOfClass(NSString.self) {
            return Int((val?.intValue)!)
        }
        return 0
    }
    
    func getBoolValueForKey(key : AnyObject) -> Bool{
        let val = self.objectForKey(key)
        if val != nil && val!.isKindOfClass(NSNumber.self) {
            return val as! Bool
        }
        if val != nil && val!.isKindOfClass(NSString.self) {
            return val! as! String == "true"
        }
        return false
    }
    
    func getCGFloatValueForKey(key : AnyObject) -> CGFloat{
        let val = self.objectForKey(key)
        if val != nil && val!.isKindOfClass(NSNumber.self) {
            return val as! CGFloat
        }
        if val != nil && val!.isKindOfClass(NSString.self) {
            return CGFloat((val?.floatValue)!)
        }
        return 0.0
    }
    
    func getArrayValueForKey(key : AnyObject) -> NSArray {
        let val = self.objectForKey(key)
        if val != nil && val!.isKindOfClass(NSArray.self) {
            return val as! NSArray
        }
        return []
    }
    
    func getDictionaryValueForKey(key : AnyObject) -> NSDictionary {
        let val = self.objectForKey(key)
        if val != nil && val!.isKindOfClass(NSDictionary.self) {
            return val as! NSDictionary
        }
        return [:]
    }
}
