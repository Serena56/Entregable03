//
//  ContenidoTableViewController.swift
//  SerenaDominguezE3
//
//  Created by Serena Dominguez on 17/7/18.
//

import UIKit

class ContenidoTableViewController: UITableViewController {
    
    var query: String?
    var contenidos:[Contenido] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = query
        
        let contenidoService = ContenidoService()
        
        contenidoService.searchWithQuery(query: query!, completion: { (resultados) in
            self.contenidos = resultados
            self.tableView.reloadData()
        })
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
     
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return contenidos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contenidoCelda", for: indexPath)
 
        if let contenidoCell = cell as? ContenidoTableViewCell {
            contenidoCell.resultado = contenidos[indexPath.row]
            contenidoCell.setup()
        }

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
           if let selected = tableView.indexPathForSelectedRow {
                destination.contenido = contenidos[selected.row]
            }
        }
    }

}
