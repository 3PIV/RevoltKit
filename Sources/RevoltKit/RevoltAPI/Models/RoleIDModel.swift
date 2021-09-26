//
//  RoleIDModel.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation

public struct RoleIDModel: Codable, Hashable {

    /** Id */
    public var role: String

  public init(role: String) {
        self.role = channel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case role
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(role, forKey: .channel)
    }
}
