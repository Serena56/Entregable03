//
//  ContenidoDAO.swift
//  SerenaDominguezE3
//
//  Created by Serena Dominguez on 17/7/18.
//

import Foundation
import Alamofire

class ContenidoDAO {
    
    
 func getContentFromAPI( query: String , daoCompleted: @escaping (([Contenido]) -> Void)) -> Void {
        let searchUrl = "https://api.unsplash.com/search/photos/:id/?client_id=3191679cf58cd03731de7a82e3c2ca92e667448b6c892673787d191a03932068/?page=1&query=\(query)"
//        let  client_id = "3191679cf58cd03731de7a82e3c2ca92e667448b6c892673787d191a03932068"
    Alamofire.request(searchUrl).responseJSON { (resultados) in
        if let mainDictionary = resultados.result.value as? [String:AnyObject] {
            if let results = mainDictionary["results"] as? [[String:AnyObject]] {
//                if let losResultados = results["user"] as? [String:AnyObject] {
                 var resultadosArray:[Contenido] = []
                  for aDictionary in results {
                    let newResultado = Contenido(dictionary: aDictionary)
                    resultadosArray.append(newResultado)
                }
                daoCompleted(resultadosArray)
//            }
           
          }
        }
    }
}
    
}

