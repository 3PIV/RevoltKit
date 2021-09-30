//
//  RevoltConfigurationModel.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RevoltConfigurationModel: Codable, Hashable {
    
    /** Server ID */
    public var revolt: String
    
    public struct RevoltFeatures: Codable, Hashable {
        public var registration: Bool?
        
        public struct RevoltCaptcha: Codable, Hashable {
            public var enabled: Bool
            public var key: String
            
            public init(enabled: Bool, key: String) {
                self.enabled = enabled
                self.key = key
            }
        }
        public var captcha: RevoltCaptcha
        
        public var email: Bool
        
        @TruthyWrapper public var invite_only: Bool
        
        public struct RevoltAutumn: Codable, Hashable {
            public var enabled: Bool
            public var url: String
            
            public init(enabled: Bool, url: String) {
                self.enabled = enabled
                self.url = url
            }
        }
        public var autumn: RevoltAutumn
        
        public struct RevoltJanuary: Codable, Hashable {
            public var enabled: Bool
            public var url: String
            
            public init(enabled: Bool, url: String) {
                self.enabled = enabled
                self.url = url
            }
        }
        public var january: RevoltJanuary
        
        public struct RevoltVoso: Codable, Hashable {
            public var enabled: Bool
            public var url: String
            public var ws: String
            
            public init(enabled: Bool, url: String, ws: String) {
                self.enabled = enabled
                self.url = url
                self.ws = ws
            }
        }
        public var voso: RevoltVoso
    }
    public var features: RevoltFeatures
    
    public var ws: String
    public var app: String
    public var vapid: String
    
    public init(revolt: String, features: RevoltFeatures, ws: String, app: String, vapid: String) {
        self.revolt = revolt
        self.features = features
        self.ws = ws
        self.app = app
        self.vapid = vapid
    }
}

