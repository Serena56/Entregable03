//
//  ViewController.swift
//  SerenaDominguezE3
//
//  Created by Digital House on 16/7/18.
//

import UIKit

class SearchViewController: UIViewController {


    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var searchButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func searchButtonTapped(_ sender: Any) {
        if let texto = textField.text {
            if texto.count > 0 {
        performSegue(withIdentifier: "alContenido", sender: nil)
        }
    }
}
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? ContenidoTableViewController {
                destination.query = textField.text
          }
        }
        
    

}

