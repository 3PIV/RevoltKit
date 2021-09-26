//
//  ProfileModel.swift
//  
//
//  Created by Paul Provins on 9/26/21.
//

import Foundation

public struct ProfileModel: Codable, Hashable {
    
    public var content: String
    
    public var background: AttachmentModel
    
    public init(content: String, background: AttachmentModel) {
        self.content = content
        self.background = background
    }
}
