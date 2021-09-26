//
//  RetrievedInviteModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct RetrievedInviteModel: Codable, Hashable {
    public var type: String
    
    public var serverID: String
    
    public var serverName: String
    
    public var serverIcon: AttachmentModel?
    
    public var serverBanner: AttachmentModel?
    
    public var channelID: String
    
    public var channelName: String
    
    public var channelDescription: String?
    
    public var userName: String
    
    public var userAvatar: AttachmentModel?
    
    public var memberCount: UInt64
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case serverID = "server_id"
        case serverName = "server_name"
        case serverIcon = "server_icon"
        case serverBanner = "server_banner"
        case channelID = "channel_id"
        case channelName = "channel_name"
        case channelDescription = "channel_description"
        case userName = "user_name"
        case userAvatar = "user_avatar"
        case memberCount = "member_count"
    }
}
