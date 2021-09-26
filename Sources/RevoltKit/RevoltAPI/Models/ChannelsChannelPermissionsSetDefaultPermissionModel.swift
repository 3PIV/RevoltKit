//
// InlineObject13Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelsChannelPermissionsSetDefaultPermissionModel: Codable, Hashable {

    public var permissions: UInt64

    public init(permissions: UInt64) {
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(permissions, forKey: .permissions)
    }
}
