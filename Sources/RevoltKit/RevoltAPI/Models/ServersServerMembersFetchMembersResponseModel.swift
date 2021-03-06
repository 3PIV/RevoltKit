//
// InlineResponse2004Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServersServerMembersFetchMembersResponseModel: Codable, Hashable {
    
    public var members: [ServerMemberResponseModel]
    public var users: [UserModel]
    
    public init(members: [ServerMemberResponseModel], users: [UserModel]) {
        self.members = members
        self.users = users
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case members
        case users
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(members, forKey: .members)
        try container.encode(users, forKey: .users)
    }
}

