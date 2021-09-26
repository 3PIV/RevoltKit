//
// InlineResponse2002EditedModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Unix timestamp of when message was last edited */
public struct ChannelsMessagingFetchMessageEditedResponseModel: Codable, Hashable {
    
    public var date: String
    
    public init(date: String) {
        self.date = date
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case date = "$date"
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(date, forKey: .date)
    }
}

