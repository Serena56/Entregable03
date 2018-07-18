//
//  ContenidoService.swift
//  SerenaDominguezE3
//
//  Created by Serena Dominguez on 17/7/18.
//

import Foundation

class ContenidoService {
    
    func searchWithQuery(query: String, completion: @escaping ([Contenido]) -> Void) {
        
        let dao = ContenidoDAO()
        
        dao.getContentFromAPI(query: query) { (resultados) in
            completion(resultados)
        }
    }
    
    
    
    
}
