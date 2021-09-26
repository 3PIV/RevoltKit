//
// InlineResponse2005Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServersServerMembersFetchBansResponseModel: Codable, Hashable {

    /** Just enough user information to list bans. */
    public var users: [UserModel]
    /** Ban List */
    public var bans: [ServersServerMembersFetchBansResponseModel]

    public init(users: [UserModel], bans: [ServersServerMembersFetchBansResponseModel]) {
        self.users = users
        self.bans = bans
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
        case bans
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(users, forKey: .users)
        try container.encode(bans, forKey: .bans)
    }
}
