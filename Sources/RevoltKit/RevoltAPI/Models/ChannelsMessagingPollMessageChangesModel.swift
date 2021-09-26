//
// InlineObject17Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelsMessagingPollMessageChangesModel: Codable, Hashable {

    /** Array of message IDs. */
    public var ids: [String]

    public init(ids: [String]) {
        self.ids = ids
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ids
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ids, forKey: .ids)
    }
}
