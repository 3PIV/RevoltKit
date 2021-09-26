//
//  BotModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct BotModel: Codable, Hashable {
    public var id: String
    public var username: String
    public var avatar: AttachmentModel
    public var description: String
    
    public init(id: String, username: String, avatar: AttachmentModel, description: String) {
        self.id = id
        self.username = username
        self.avatar = avatar
        self.description = description
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case username
        case avatar
        case description
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(username, forKey: .username)
        try container.encode(avatar, forKey: .avatar)
        try container.encode(description, forKey: .description)
        
    }
}
