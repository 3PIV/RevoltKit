//
// InlineResponse2009ServerModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServerModel: Codable, Hashable {
    
    /** Server ID */
    public var id: String
    /** Nonce value, prefer to use ULIDs here for better feature support.  Used to prevent double requests to create objects. */
    public var nonce: String?
    /** User ID of server owner */
    public var owner: String
    /** Server name */
    public var name: String
    /** Server description */
    public var description: String?
    /** Array of server channel IDs */
    public var channels: [String]
    /** Array of server categories */
    public var categories: [ServerCategoriesModel]?
    public var systemMessages: ServerSystemMessagesModel?
    /** Server roles */
    public var roles: [String: ServerRolesModel]?
    /** Default permissions for all members  This is a tuple consisting of server and channel permissions in that order. */
    public var defaultPermissions: [UInt64]
    public var icon: ServerIconModel?
    public var banner: ServerBannerModel?
    /** Whether this server is marked as not safe for work */
    public var nsfw: Bool?
    /** Server flags  `1`: Official Revolt server `2`: Verified community server */
    public var flags: Double?
    
    public init(id: String, nonce: String? = nil, owner: String, name: String, description: String? = nil, channels: [String], categories: [ServerCategoriesModel]? = nil, systemMessages: ServerSystemMessagesModel? = nil, roles: [String: ServerRolesModel]? = nil, defaultPermissions: [UInt64], icon: ServerIconModel? = nil, banner: ServerBannerModel? = nil, nsfw: Bool? = nil, flags: Double? = nil) {
        self.id = id
        self.nonce = nonce
        self.owner = owner
        self.name = name
        self.description = description
        self.channels = channels
        self.categories = categories
        self.systemMessages = systemMessages
        self.roles = roles
        self.defaultPermissions = defaultPermissions
        self.icon = icon
        self.banner = banner
        self.nsfw = nsfw
        self.flags = flags
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case nonce
        case owner
        case name
        case description
        case channels
        case categories
        case systemMessages = "system_messages"
        case roles
        case defaultPermissions = "default_permissions"
        case icon
        case banner
        case nsfw
        case flags
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(nonce, forKey: .nonce)
        try container.encode(owner, forKey: .owner)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(channels, forKey: .channels)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(systemMessages, forKey: .systemMessages)
        try container.encodeIfPresent(roles, forKey: .roles)
        try container.encode(defaultPermissions, forKey: .defaultPermissions)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(banner, forKey: .banner)
        try container.encodeIfPresent(nsfw, forKey: .nsfw)
        try container.encodeIfPresent(flags, forKey: .flags)
    }
}

