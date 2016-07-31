//
//  Masa.swift
//  pizzaWatch
//
//  Created by David Aristizabal on 30/07/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import WatchKit

class Masa: NSObject {
    
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : Array = Array<String>()
        
    init(t:String) {
        tamano = t
    }
    
    init(t: String, m:String) {
        tamano=t
        masa=m
    }
    
    init(t:String,m:String,q:String) {
        tamano=t
        masa=m
        queso = q
    }
    
    init(t:String,m:String,q:String, i:Array<String>) {
        tamano=t
        masa=m
        queso = q
        ingredientes=i
    }
    
    func setterIngredientes(i:Array<String>) {
        ingredientes=i
    }
}