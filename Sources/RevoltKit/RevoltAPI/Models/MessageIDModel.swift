//
//  MessageIDModel.swift
//  
//
//  Created by Paul Provins on 9/25/21.
//

import Foundation

public struct MessageIDModel: Codable, Hashable {
    
    /** Id */
    public var message: String
    
    public init(message: String) {
        self.message = message
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
    }
}

