//
//  ChannelUnreadModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct ChannelUnreadModel: Codable, Hashable {
    public struct ChannelUnreadIdentifier: Codable, Hashable {
        public var channel: String
        public var user: String
    }
    public var id: ChannelUnreadIdentifier
    
    public var lastID: String
    
    public var mentions: [String]
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case lastID = "last_id"
        case mentions
    }
}
