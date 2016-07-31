//
//  confirmacionController.swift
//  pizzaWatch
//
//  Created by David Aristizabal on 30/07/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import WatchKit
import Foundation


class confirmacionController: WKInterfaceController {
    @IBOutlet var tamanoLbl: WKInterfaceLabel!
    @IBOutlet var tipoMasaLbl: WKInterfaceLabel!
    @IBOutlet var quesoLbl: WKInterfaceLabel!
    @IBOutlet var ingredientesLbl: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Masa
        tamanoLbl.setText(String(c.tamano))
        tipoMasaLbl.setText(String(c.masa))
        quesoLbl.setText(String(c.queso))
        
        var resultado = ""
        for index in c.ingredientes {
            resultado = resultado + index + ", "
        }
        
        ingredientesLbl.setText(String(resultado))
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
}
