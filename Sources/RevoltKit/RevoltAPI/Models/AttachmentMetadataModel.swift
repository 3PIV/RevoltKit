//
//  File.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AttachmentMetadataModel: Codable, Hashable {
  public var type: String
  public var width: Numeric?
  public var height: Numeric?
  
  public init(type: String, width: Numeric? = nil, height: Numeric? = nil) {
    self.type = type
    self.width = width
    self.height = height
  }
  
  public enum CodingKeys: String, CodingKey, CaseIterable {
    case type
    case width
    case height
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: Self.CodingKeys)
    try container.encode(type, forKey: .type)
    try container.encode(width, forKey: .width)
    try container.encode(height, forKey: .height)
  }
}
