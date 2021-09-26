//
//  DirectMessageChannelModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct DirectMessageChannelModel: Codable, Hashable {
    public var id: String
    
    public var channelType: String

    public var active: Bool

    public var recipients: [String]

    public var lastMessageID: String?

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case channelType = "channel_type"
        case active
        case recipients
        case lastMessageID = "last_message_id"
    }
}
