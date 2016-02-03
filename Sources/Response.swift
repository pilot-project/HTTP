//
//  Response.swift
//  Pilot
//
//  Created by Wesley Cope on 12/7/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation

public struct Response {
    var status:Status
    var headers:[Header]
    var body:String?
    var contentType:String? {
        get {
            return self["Content-Type"]
        }
        
        set {
            self["Content-Type"] = newValue
        }
    }
    
    public init(_ status:Status, headers:[Header]? = nil, contentType:String? = nil, body:String? = nil) {
        self.status     = status
        self.headers    = headers ?? []
        self.body       = body
        
        if let contentType = contentType {
            self.headers.append(("Content-Type", contentType))
        }
    }
    
    public subscript(header:String) -> String? {
        get {
            return headers.filter { $0.0 == header }.first?.1
        }
        
        set {
            if let newValue = newValue {
                headers.append((header, newValue))
            }
        }
    }
}