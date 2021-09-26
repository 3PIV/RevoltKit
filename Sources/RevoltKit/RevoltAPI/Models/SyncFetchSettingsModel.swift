//
// InlineObject30Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SyncFetchSettingsModel: Codable, Hashable {
    
    /** Keys to fetch */
    public var keys: [String]
    
    public init(keys: [String]) {
        self.keys = keys
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keys
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(keys, forKey: .keys)
    }
}

