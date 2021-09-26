//
//  SessionInfoModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct SessionInfoModel: Codable, Hashable {
    
    /** Id */
    public var id: String
    public var name: String
    
    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case name
    }
    
    // Encodable protocol methods
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
    }
}
