//
//  DetailViewController.swift
//  SerenaDominguezE3
//
//  Created by Serena Dominguez on 18/7/18.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var avatarImagen: UIImageView!
    @IBOutlet weak var nomreLabel: UILabel!
    @IBOutlet weak var ubicacionLabel: UILabel!
    @IBOutlet weak var imagenPrincipal: UIImageView!
    @IBOutlet weak var biografiaLabel: UILabel!
    
     var contenido: Contenido?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomreLabel.text = contenido?.nombreUsuario
        ubicacionLabel.text = contenido?.creationDate
        biografiaLabel.text = contenido?.biografiaUsuario
        let urlPrincipal = URL(string: (contenido?.urlStringPhoto)!)
        imagenPrincipal.kf.setImage(with: urlPrincipal)
        let urlAv = URL(string: (contenido?.urlStringAvatar)!)
        avatarImagen.kf.setImage(with: urlAv)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
