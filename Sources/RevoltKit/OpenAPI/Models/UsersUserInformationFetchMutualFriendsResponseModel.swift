//
// InlineResponse200Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersUserInformationFetchMutualFriendsResponseModel: Codable, Hashable {

    /** Array of user IDs who both you and the other user are friends with. */
    public var users: [String]

    public init(users: [String]) {
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(users, forKey: .users)
    }
}

