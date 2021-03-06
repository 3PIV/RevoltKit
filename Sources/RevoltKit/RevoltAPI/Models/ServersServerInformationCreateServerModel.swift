//
// InlineObject21Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServersServerInformationCreateServerModel: Codable, Hashable {
    
    /** Server name */
    public var name: String
    /** Server description */
    public var description: String?
    /** Whether this server is not safe for work */
    public var nsfw: Bool?
    /** Nonce value, prefer to use ULIDs here for better feature support.  Used to prevent double requests to create objects. */
    public var nonce: String
    
    public init(name: String, description: String? = nil, nsfw: Bool? = nil, nonce: String) {
        self.name = name
        self.description = description
        self.nsfw = nsfw
        self.nonce = nonce
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case nsfw
        case nonce
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(nsfw, forKey: .nsfw)
        try container.encode(nonce, forKey: .nonce)
    }
}

