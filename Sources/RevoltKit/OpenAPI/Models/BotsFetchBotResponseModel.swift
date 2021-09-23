//
// InlineResponse2008Model.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BotsFetchBotResponseModel: Codable, Hashable {

    public var bot: BotModel
    public var user: UserModel

    public init(bot: BotModel, user: UserModel) {
        self.bot = bot
        self.user = user
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bot
        case user
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bot, forKey: .bot)
        try container.encode(user, forKey: .user)
    }
}

