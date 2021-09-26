//
//  SessionModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct SessionModel: Codable, Hashable {
    
    /** Server ID */
    public var id: String?
    /** Nonce value, prefer to use ULIDs here for better feature support.  Used to prevent double requests to create objects. */
    public var userID: String
    /** User ID of server owner */
    public var token: String
    /** Server name */
    public var name: String
    /** Server description */
    public var subscription: String?
    
    public init(id: String? = nil, userID: String, token: String, name: String, subscription: String? = nil) {
        self.id = id
        self.userID = userID
        self.token = token
        self.name = name
        self.subscription = subscription
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case userID = "user_id"
        case token
        case name
        case subscription
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(userID, forKey: .userID)
        try container.encode(token, forKey: .token)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(subscription, forKey: .subscription)
    }
}
