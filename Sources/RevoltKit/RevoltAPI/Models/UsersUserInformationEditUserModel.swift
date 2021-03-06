//
// InlineObject9Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersUserInformationEditUserModel: Codable, Hashable {
    
    public enum RemoveModel: String, Codable, CaseIterable {
        case avatar = "Avatar"
        case profileBackground = "ProfileBackground"
        case profileContent = "ProfileContent"
        case statusText = "StatusText"
    }
    public var status: UsersMeStatusModel?
    public var profile: UsersMeProfileModel?
    /** Autumn file ID, [learn more](https://example.com/TODO). */
    public var avatar: String?
    /** Field to remove from user object */
    public var remove: RemoveModel?
    
    public init(status: UsersMeStatusModel? = nil, profile: UsersMeProfileModel? = nil, avatar: String? = nil, remove: RemoveModel? = nil) {
        self.status = status
        self.profile = profile
        self.avatar = avatar
        self.remove = remove
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case profile
        case avatar
        case remove
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(profile, forKey: .profile)
        try container.encodeIfPresent(avatar, forKey: .avatar)
        try container.encodeIfPresent(remove, forKey: .remove)
    }
}

