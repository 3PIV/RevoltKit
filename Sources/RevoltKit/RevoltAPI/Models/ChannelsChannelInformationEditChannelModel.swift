//
// InlineObject11Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelsChannelInformationEditChannelModel: Codable, Hashable {
    
    public enum RemoveModel: String, Codable, CaseIterable {
        case description = "Description"
        case icon = "Icon"
    }
    /** Channel name */
    public var name: String?
    /** Channel description */
    public var description: String?
    /** Autumn file ID, [learn more](https://example.com/TODO). */
    public var icon: String?
    /** Whether this channel is not safe for work */
    public var nsfw: Bool?
    /** Field to remove from channel object */
    public var remove: RemoveModel?
    
    public init(name: String? = nil, description: String? = nil, icon: String? = nil, nsfw: Bool? = nil, remove: RemoveModel? = nil) {
        self.name = name
        self.description = description
        self.icon = icon
        self.nsfw = nsfw
        self.remove = remove
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case icon
        case nsfw
        case remove
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(nsfw, forKey: .nsfw)
        try container.encodeIfPresent(remove, forKey: .remove)
    }
}

