//
// InlineObject26Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServersServerPermissionsSetDefaultPermissionModel: Codable, Hashable {

    public var permissions: ServersServerPermissionsRolePermissionsModel

    public init(permissions: ServersServerPermissionsRolePermissionsModel) {
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

