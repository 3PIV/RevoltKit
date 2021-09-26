//
// InlineObject24Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServersServerMembersBanUserReasonModel: Codable, Hashable {
    
    /** Ban reason */
    public var reason: String?
    
    public init(reason: String? = nil) {
        self.reason = reason
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reason
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(reason, forKey: .reason)
    }
}

