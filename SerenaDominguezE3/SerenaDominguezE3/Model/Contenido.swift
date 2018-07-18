//
//  Contenido.swift
//  SerenaDominguezE3
//
//  Created by Serena Dominguez on 17/7/18.
//

import Foundation

class Contenido {
    
    var urlStringPhoto: String
    var urlStringAvatar: String
    var creationDate: String
    var nombreUsuario: String
    var biografiaUsuario: String
    
    init(dictionary: [String: AnyObject]) {
        self.creationDate = dictionary["created_at"] as? String ?? "no info"
        self.biografiaUsuario = dictionary["description"] as? String ?? "no info"
        if let theUser = dictionary["user"] as? [String:AnyObject] {
            self.nombreUsuario = theUser["name"] as? String ?? "no info"
            if let theProfileImage = theUser["profile_image"] as? [String:AnyObject] {
            self.urlStringAvatar = theProfileImage["small"] as? String ?? "no info"
            } else {
                self.urlStringAvatar = ""
            }
            if let thePhotoImage = dictionary["urls"] as? [String:AnyObject] {
            self.urlStringPhoto = thePhotoImage["regular"] as? String ?? "no info"
            } else {
                self.urlStringPhoto = ""
            }
        } else {
            self.nombreUsuario = ""
            self.urlStringPhoto = ""
            self.urlStringAvatar = ""
    }
}
}

