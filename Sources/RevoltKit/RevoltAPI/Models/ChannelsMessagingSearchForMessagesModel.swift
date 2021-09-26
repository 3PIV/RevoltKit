//
// InlineObject18Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelsMessagingSearchForMessagesModel: Codable, Hashable {
    
    public enum SortModel: String, Codable, CaseIterable {
        case latest = "Latest"
        case oldest = "Oldest"
        case relevance = "Relevance"
    }
    /** Full-text search query.  See [MongoDB documentation](https://docs.mongodb.com/manual/text-search/#-text-operator) for more information. */
    public var query: String
    /** Maximum number of messages to fetch. */
    public var limit: Double?
    /** Message id before which messages should be fetched. */
    public var before: String?
    /** Message id after which messages should be fetched. */
    public var after: String?
    /** Message sort direction, by default it will be sorted by relevance. */
    public var sort: SortModel?
    /** Whether to include user (and member, if server channel) objects. */
    public var includeUsers: Bool?
    
    public init(query: String, limit: Double? = nil, before: String? = nil, after: String? = nil, sort: SortModel? = nil, includeUsers: Bool? = nil) {
        self.query = query
        self.limit = limit
        self.before = before
        self.after = after
        self.sort = sort
        self.includeUsers = includeUsers
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case query
        case limit
        case before
        case after
        case sort
        case includeUsers = "include_users"
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(query, forKey: .query)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(before, forKey: .before)
        try container.encodeIfPresent(after, forKey: .after)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(includeUsers, forKey: .includeUsers)
    }
}

