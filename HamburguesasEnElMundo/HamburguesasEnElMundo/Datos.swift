//
//  Datos.swift
//  HamburguesasEnElMundo
//
//  Created by David Aristizabal on 25/04/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import Foundation


class ColeccionPaises {
    let paises=["Colombia", "Mexico", "Alemania", "Brazil", "Venezuela", "Peru", "Ecuador", "Bolivia", "Chile", "Argentina", "Uruguay", "Paraguay", "Canada", "EEUU", "Panama", "España", "Francia", "Italia", "Francia", "Inglaterra"]
    
    func obtenPais() -> String {
        let pais = Int(arc4random()) % paises.count
        return paises[pais]
    }
}

class ColeccionDeHamburguesa {
    let hamburguesas = ["Sencilla", "Super Grande", "Grande", "Doble Queso", "Doble Carne", "Super Grasienta", "Hawaina", "Tropical", "Llanera", "Vegetariana", "Mixta", "Mini", "Junior", "Ordinaria", "Deliciosa", "Mal Olor", "Con Sabor A Moco", "Delgada", "Monstro", "Doble Piso"]
    
    func obtenHamburguesa() -> String {
        let hamburguesa = Int(arc4random()) % hamburguesas.count
        return hamburguesas[hamburguesa]
    }
}