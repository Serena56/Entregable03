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
        self.urlStringPhoto = dictionary["regular"] as? String ?? "no info"
        self.urlStringAvatar = dictionary["medium"] as? String ?? "no info"
        self.creationDate = dictionary["created_at"] as? String ?? "no info"
        self.nombreUsuario = dictionary["name"] as? String ?? "no info"
        self.biografiaUsuario = dictionary["description"] as? String ?? "no info"
    }

}
