//
// InlineResponse2009ServerRolesModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServerRolesModel: Codable, Hashable {

    /** Role name */
    public var name: String
    /** Tuple consisting of server and channel permissions in that order */
    public var permissions: [UInt64]
    /** Valid HTML colour  Warning: This is untrusted input, do not simply insert this anywhere.  **Example usage:** ```js document.body.style.color = role.colour; ``` */
    public var colour: String?
    /** Whether to display this role separately on the members list */
    public var hoist: Bool?
    /** Role ranking  A role with a smaller number will have permissions over roles with larger numbers. */
    public var rank: Double?

    public init(name: String, permissions: [UInt64], colour: String? = nil, hoist: Bool? = nil, rank: Double? = nil) {
        self.name = name
        self.permissions = permissions
        self.colour = colour
        self.hoist = hoist
        self.rank = rank
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case permissions
        case colour
        case hoist
        case rank
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(permissions, forKey: .permissions)
        try container.encodeIfPresent(colour, forKey: .colour)
        try container.encodeIfPresent(hoist, forKey: .hoist)
        try container.encodeIfPresent(rank, forKey: .rank)
    }
}

