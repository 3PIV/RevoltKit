//
//  AccountModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct AccountModel: Codable, Hashable {
    public var id: String
    public var email: String
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case email
    }
}
