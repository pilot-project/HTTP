//
//  Request.swift
//  Pilot
//
//  Created by Wesley Cope on 12/7/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation

public struct Request : CustomStringConvertible, CustomDebugStringConvertible {
    public var method:Method
    public var path:String
    public var headers:[Header]
    public var body:String?
    
    public var description:String {
        return "\(method) :: \(path)"
    }
    
    public var debugDescription:String {
        let head    = headers.map { "\($0): \($1)" }
        
        return "\(description)\n" + head.joinWithSeparator("\n")
    }
    
    public var host:String? {
        return self["Host"]
    }
    
    public var contentType:String? {
        return self["Content-Type"]
    }
    
    public var contentLength:Int? {
        guard let length = self["Content-Length"] else {
            return nil
        }
        
        return Int(length)
    }
    
    public var accept:String? {
        return self["Accept"]
    }
    
    public var authorization:String? {
        return self["Authorization"]
    }
    
    public init(method:Method = .GET, path:String, headers:[Header]? = nil, body:String? = nil) {
        self.method     = method
        self.path       = path
        self.headers    = headers ?? []
        self.body       = body
    }
 
    public subscript(header:String) -> String? {
        get {
            return headers.filter { $0.0 == header }.first?.1
        }
    }
}