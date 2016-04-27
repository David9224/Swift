//
//  ViewController.swift
//  HamburguesasEnElMundo
//
//  Created by David Aristizabal on 25/04/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hamburguesas: UILabel!
    @IBOutlet weak var paises: UILabel!
    let coleccionPaises = ColeccionPaises()
    let coleccionHambuerguesas = ColeccionDeHamburguesa()
    let colores = Colores()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarPedido() {
        let colorAleatorio = colores.regresaColor()
        
        paises.text = coleccionPaises.obtenPais()
        hamburguesas.text = coleccionHambuerguesas.obtenHamburguesa()
        view.tintColor = colorAleatorio
        view.backgroundColor = colorAleatorio
    }

}

