//
//  Params.swift
//  Pilot
//
//  Created by Wesley Cope on 12/7/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation

struct Params {
    var limit:Int                       = 2048
    var size:Int                        = 0
    var properties:[String:AnyObject]   = [:]
    
    subscript(key:String) -> AnyObject? {
        get {
            if !has(key) { return nil }
            
            return properties[key]
        }
        
        set(newValue) {
            properties[key] = newValue
        }
    }
    
    func has(key:String) -> Bool {
        return properties.keys.contains(key)
    }
    
    func hash() -> [String:AnyObject] {
        let hash = properties
        var params:[String:AnyObject] = [:]
        
        for (key, val) in hash {
            if let value = val as? Params {
                params[key] = value.hash()
            }
            else if let value = val as? [AnyObject] {
                params[key] = value.map { $0 is Params ? ($0 as! Params).hash() : $0 }
            }
        }
        
        return params
    }
}
