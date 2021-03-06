//
// UsersMeProfileModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** User profile data */
public struct UsersMeProfileModel: Codable, Hashable {
    
    /** Text to set as user profile description */
    public var content: String?
    /** Autumn file ID, [learn more](https://example.com/TODO). */
    public var background: String?
    
    public init(content: String? = nil, background: String? = nil) {
        self.content = content
        self.background = background
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case background
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(background, forKey: .background)
    }
}

