//
//  RoleEditModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct RoleEditModel: Codable, Hashable {
    public var name: String
    public var colour: String?
    public var hoist: Bool?
    public var rank: UInt64?
    public var remove: String?
}
