//
//  UserPresenceModel.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation

public enum UserPresenceModel: String, Codable, CaseIterable {
  case busy = "Busy"
  case idle = "Idle"
  case invisible = "Invisible"
  case online = "Online"
}
