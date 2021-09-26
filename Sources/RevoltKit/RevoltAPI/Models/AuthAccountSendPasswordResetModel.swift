//
// InlineObject3Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthAccountSendPasswordResetModel: Codable, Hashable {
    
    /** Email */
    public var email: String
    /** Captcha verification token */
    public var captcha: String?
    
    public init(email: String, captcha: String? = nil) {
        self.email = email
        self.captcha = captcha
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case captcha
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(captcha, forKey: .captcha)
    }
}

