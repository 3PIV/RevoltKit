//
//  UserRelationshipModel.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation

public enum UserRelationshipType: String, Codable, CaseIterable {
  case blocked = "Blocked"
  case blockedOther = "BlockedOther"
  case friend = "Friend"
  case incoming = "Incoming"
  case none = "None"
  case outgoing = "Outcoming"
  case user = "User"
}

public struct UserRelationshipModel {

  public var type: UserRelationshipType
  public var id: String

  public init(type: UserRelationshipType, id: String) {
    self.type = type
      self.id = id
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
      case type
      case id = "_id"
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(type, forKey: .type)
      try container.encode(id, forKey: .id)
  }
}

public struct UserNoIDRelationshipModel {
  public var type: UserRelationshipType
  
  public init(type: UserRelationshipType, id: String) {
    self.type = type
  }

  public enum CodingKeys: String, CodingKey, CaseIterable {
      case type
  }

  // Encodable protocol methods

  public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(type, forKey: .type)
  }
}
