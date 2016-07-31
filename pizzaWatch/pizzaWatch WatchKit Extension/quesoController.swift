//
//  quesoController.swift
//  pizzaWatch
//
//  Created by David Aristizabal on 30/07/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import WatchKit
import Foundation


class quesoController: WKInterfaceController {

    @IBOutlet var quesoLst: WKInterfacePicker!
    @IBOutlet var quesoLbl: WKInterfaceLabel!
    
    var queso = ""
    var tamano = ""
    var masa = ""
    var itemsArray : Array = Array<WKPickerItem>()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        // Configure interface objects here.
        let item1 = WKPickerItem()
        item1.title = "Mozarela"
        
        let item2 = WKPickerItem()
        item2.title = "Cheddar"
        
        let item3 = WKPickerItem()
        item3.title = "Parmesano"
        
        let item4 = WKPickerItem()
        item4.title = "Sin Queso"
        
        itemsArray = [item1, item2, item3]
        
        quesoLst.setItems(itemsArray)
        
        let c = context as! Masa
        tamano = c.tamano
        masa = c.masa
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func itemSelected(value: Int) {
        let item = itemsArray[value]
        queso = item.title!
        quesoLbl.setText(String(item.title!))
    }
    
    @IBAction func quesoSiguiente() {
        let pizzaContext = Masa(t: tamano, m: masa, q: queso)
        pushControllerWithName("queso", context: pizzaContext)
    }
    

}
