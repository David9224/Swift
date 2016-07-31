//
//  IngredientesController.swift
//  pizzaWatch
//
//  Created by David Aristizabal on 30/07/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    
    var queso = ""
    var tamano = ""
    var masa = ""
    var ingredientes : Array = Array<String>()
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Masa
        queso = c.queso
        tamano = c.tamano
        masa = c.masa
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func jamonSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Jamon")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Jamon")!
                ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func pepperoniSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Pepperoni")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Pepperoni")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func pavoSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Pavo")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Pavo")!
            ingredientes.removeAtIndex(index)
            }
        }
    }

    @IBAction func salchichaSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Salchicha")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Salchicha")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func aceitunaSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Aceituna")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Aceituna")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func cebollaSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Cebolla")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Cebolla")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func pimientoSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Pimiento")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Pimiento")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func pinaSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Piña")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Piña")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func anchoaSwitch(value: Bool) {
        var index : Int
        if value{
            ingredientes.append("Anchoa")
        }else{
            if ingredientes.count > 0{
            index = ingredientes.indexOf("Anchoa")!
            ingredientes.removeAtIndex(index)
            }
        }
    }
    
    @IBAction func ingredientesSiguiente() {
        let pizzaContext = Masa(t: tamano, m: masa, q: queso, i: ingredientes)
        pushControllerWithName("Pizza", context: pizzaContext)
    }
    
}
