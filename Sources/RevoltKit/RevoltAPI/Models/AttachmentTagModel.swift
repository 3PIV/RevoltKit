//
//  File.swift
//  
//
//  Created by Paul Provins on 9/22/21.
//

import Foundation

public enum AttachmentTagModel: String, Codable, CaseIterable {
    case attachments = "attachments"
    case avatars = "avatars"
    case backgrounds = "backgrounds"
    case banners = "banners"
    case icons = "icons"
}
