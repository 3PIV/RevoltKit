//
//  ChannelIDModel.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation

public struct ChannelIDModel: Codable, Hashable {
    
    /** Id */
    public var channel: String
    
    public init(channel: String) {
        self.channel = channel
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case channel
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(channel, forKey: .channel)
    }
}
