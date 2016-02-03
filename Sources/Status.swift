//
//  Status.swift
//  Pilot
//
//  Created by Wesley Cope on 12/9/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation

public enum Status : Int {
    case Continue                       = 100
    case SwitchingProtocols             = 101
    case OK                             = 200
    case Created                        = 201
    case Accepted                       = 202
    case NonAuthoritativeInformation    = 203
    case NoContent                      = 204
    case ResetContent                   = 205
    case PartialContent                 = 206
    case MultipleChoices                = 300
    case MovedPermanently               = 301
    case Found                          = 302
    case SeeOther                       = 303
    case NotModified                    = 304
    case UseProxy                       = 305
    case TemporaryRedirect              = 307
    case BadRequest                     = 400
    case Unauthorized                   = 401
    case PaymentRequired                = 402
    case Forbidden                      = 403
    case NotFound                       = 404
    case MethodNotAllowed               = 405
    case NotAcceptable                  = 406
    case ProxyAuthenticationRequired    = 407
    case RequestTimeout                 = 408
    case Conflict                       = 409
    case Gone                           = 410
    case LengthRequired                 = 411
    case PreconditionFailed             = 412
    case RequestEntityTooLarge          = 413
    case RequestURITooLong              = 414
    case UnsupportedMediaType           = 415
    case RequestedRangeNotSatisfiable   = 416
    case ExpectationFailed              = 417
    case InternalServerError            = 500
    case NotImplemented                 = 501
    case BadGateway                     = 502
    case ServiceUnavailable             = 503
    case GatewayTimeout                 = 504
    case HTTPVersionNotSupported        = 505
    
    public var description: String {
        switch self {
        case Continue:
            return "Continue"
        case SwitchingProtocols:
            return "Switching Protocols"
        case OK:
            return "OK"
        case Created:
            return "Created"
        case Accepted:
            return "Accepted"
        case NonAuthoritativeInformation:
            return "Non-Authoritative Information"
        case NoContent:
            return "No Content"
        case ResetContent:
            return "Reset Content"
        case PartialContent:
            return "Partial Content"
        case MultipleChoices:
            return "Multiple Choices"
        case MovedPermanently:
            return "Moved Permanently"
        case Found:
            return "Found"
        case SeeOther:
            return "See Other"
        case NotModified:
            return "Not Modified"
        case UseProxy:
            return "Use Proxy"
        case TemporaryRedirect:
            return "Temporary Redirect"
        case BadRequest:
            return "Bad Request"
        case Unauthorized:
            return "Unauthorized"
        case PaymentRequired:
            return "Payment Required"
        case Forbidden:
            return "Forbidden"
        case NotFound:
            return "Not Found"
        case MethodNotAllowed:
            return "Method Not Allowed"
        case NotAcceptable:
            return "Not Acceptable"
        case ProxyAuthenticationRequired:
            return "Proxy Authentication Required"
        case RequestTimeout:
            return "Request Timeout"
        case Conflict:
            return "Conflict"
        case Gone:
            return "Gone"
        case LengthRequired:
            return "Length Required"
        case PreconditionFailed:
            return "Precondition Failed"
        case RequestEntityTooLarge:
            return "Request Entity Too Large"
        case RequestURITooLong:
            return "Request-URI Too Long"
        case UnsupportedMediaType:
            return "Unsupported Media Type"
        case RequestedRangeNotSatisfiable:
            return "Requested Range Not Satisfiable"
        case ExpectationFailed:
            return "Expectation Failed"
        case InternalServerError:
            return "Internal Server Error"
        case NotImplemented:
            return "Not Implemented"
        case BadGateway:
            return "Bad Gateway"
        case ServiceUnavailable:
            return "Service Unavailable"
        case GatewayTimeout:
            return "Gateway Timeout"
        case HTTPVersionNotSupported:
            return "HTTP Version Not Supported"
        }
    }
}


