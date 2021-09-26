//
// InlineObject10Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersUserInformationChangeUsernameModel: Codable, Hashable {
    
    /** New username */
    public var username: String
    /** Current account password */
    public var password: String
    
    public init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username
        case password
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(username, forKey: .username)
        try container.encode(password, forKey: .password)
    }
}

