//
//  MemberModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct MemberModel: Codable, Hashable {
    public struct MemberIdentifier: Codable, Hashable {
        public var user: String
        public var server: String
    }
    public var id: MemberIdentifier
    
    public var nickname: String
    
    public var avatar: AttachmentModel
    
    public var roles: [String]
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case nickname
        case avatar
        case roles
    }
}
