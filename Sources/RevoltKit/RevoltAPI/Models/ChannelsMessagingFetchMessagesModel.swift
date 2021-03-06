//
// InlineObject14Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelsMessagingFetchMessagesModel: Codable, Hashable {
    
    public enum SortModel: String, Codable, CaseIterable {
        case latest = "Latest"
        case oldest = "Oldest"
    }
    /** Maximum number of messages to fetch.  For fetching nearby messages, this is `(limit + 1)`. */
    public var limit: Double?
    /** Message id before which messages should be fetched. */
    public var before: String?
    /** Message id after which messages should be fetched. */
    public var after: String?
    /** Message sort direction */
    public var sort: SortModel
    /** Message id to fetch around, this will ignore 'before', 'after' and 'sort' options. Limits in each direction will be half of the specified limit. It also fetches the specified message ID. */
    public var nearby: String?
    /** Whether to include user (and member, if server channel) objects. */
    public var includeUsers: Bool?
    
    public init(limit: Double? = nil, before: String? = nil, after: String? = nil, sort: SortModel, nearby: String? = nil, includeUsers: Bool? = nil) {
        self.limit = limit
        self.before = before
        self.after = after
        self.sort = sort
        self.nearby = nearby
        self.includeUsers = includeUsers
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case limit
        case before
        case after
        case sort
        case nearby
        case includeUsers = "include_users"
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(before, forKey: .before)
        try container.encodeIfPresent(after, forKey: .after)
        try container.encode(sort, forKey: .sort)
        try container.encodeIfPresent(nearby, forKey: .nearby)
        try container.encodeIfPresent(includeUsers, forKey: .includeUsers)
    }
}

