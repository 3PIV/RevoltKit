//
//  CodeIDModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct CodeIDModel: Codable, Hashable {
    
    /** Id */
    public var id: String
    
    public init(id: String) {
        self.id = id
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "code"
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
    }
}
