//
//  ContenidoTableViewCell.swift
//  SerenaDominguezE3
//
//  Created by Serena Dominguez on 17/7/18.
//

import UIKit
import Kingfisher

class ContenidoTableViewCell: UITableViewCell {
    
    var resultado: AnyObject?
    
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var avatarImagee: UIImageView!
    @IBOutlet weak var principalImagee: UIImageView!
    
    
    func setup() {
       
    if let elResultado = self.resultado as? Contenido {
      self.nombreLabel.text = elResultado.nombreUsuario
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ssZZZ"
        guard let date = dateFormatter.date(from: elResultado.creationDate) else {return}
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        self.fechaLabel.text = dateFormatter.string(from: date)
        let urlPrincipal = URL(string: elResultado.urlStringPhoto)
        principalImagee.kf.setImage(with: urlPrincipal)
        let urlAv = URL(string: elResultado.urlStringAvatar)
        avatarImagee.kf.setImage(with: urlAv)
        
     }
    }

}
