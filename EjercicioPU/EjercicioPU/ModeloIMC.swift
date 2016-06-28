//
//  ModeloIMC.swift
//  EjercicioPU
//
//  Created by David Aristizabal on 27/06/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import Foundation

class ModeloIMC{
    var peso:Float = 0.0
    var estatura:Float = 0.0
    
    func IMC()->Float{
        var mc=peso/(estatura*estatura)
        mc=round(mc*100)/100
        return mc
    }
}