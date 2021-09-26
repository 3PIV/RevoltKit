//
//  ChannelModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct ChannelModel: Codable, Hashable {
  public enum ChannelType: String, Codable, CaseIterable {
      case text = "Text"
      case voice = "Voice"
  }
  public var type: ChannelType
  
  public var name: String
  
  public var description: String?
  
  public var nsfw: Bool?
  
  public var nonce: String
  
  public init(type: ChannelType, name: String, description: String? = nil, nsfw: Bool? = nil, nonce: String) {
    self.type = type
    self.name = name
    self.description = description
    self.nsfw = nsfw
    self.nonce = nonce
  }
}
