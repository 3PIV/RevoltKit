//
//  GroupChannelModel.swift
//
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct GroupChannelModel: Codable, Hashable {
    
    public var name: String
    
    public var description: String?
    
    public var nonce: String
    
    public var users: [String]?
    
    public var nsfw: Bool?
        
    public init(name: String, description: String? = nil, nsfw: Bool? = nil, nonce: String, users: [String]? = nil) {
        self.name = name
        self.description = description
        self.nsfw = nsfw
        self.nonce = nonce
        self.users = users
    }
}
