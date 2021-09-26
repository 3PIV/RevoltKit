//
//  ChannelJoinInviteResponseModel.swift
//
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelJoinInviteResponseModel: Codable, Hashable {
    public var id: String
    public var channelType: String
    public var user: String
    public var nonce: String?
    
    public init(id: String, channelType: String, user: String, nonce: String? = nil) {
        self.id = id
        self.channelType = channelType
        self.user = user
        self.nonce = nonce
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case channelType = "channel_type"
        case user
        case nonce
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Self.CodingKeys)
        try container.encode(id, forKey: .id)
        try container.encode(channelType, forKey: .channelType)
        try container.encode(user, forKey: .user)
        try container.encode(nonce, forKey: .nonce)
    }
}
