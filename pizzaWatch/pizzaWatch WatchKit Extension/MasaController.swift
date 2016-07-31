//
//  MasaController.swift
//  pizzaWatch
//
//  Created by David Aristizabal on 30/07/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {
    var tamano : String = ""
    var masa : String = ""

    @IBOutlet var masaList: WKInterfacePicker!
    @IBOutlet var masaLbl: WKInterfaceLabel!
    var itemsArray : Array = Array<WKPickerItem>()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Masa
        tamano = c.tamano
        
        let item1 = WKPickerItem()
        item1.title = "Delgada"
        
        let item2 = WKPickerItem()
        item2.title = "Crujiente"
        
        let item3 = WKPickerItem()
        item3.title = "Gruesa"
        
        itemsArray = [item1, item2, item3]
        
        masaList.setItems(itemsArray)
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
    
    @IBAction func itemSelected(value: Int) {
        let item = itemsArray[value]
        masa = item.title!
        masaLbl.setText(String(item.title!))
    }
    
    
    @IBAction func siguienteMasa() {
        let pizzaContext = Masa(t: tamano, m: masa)
        pushControllerWithName("masa", context: pizzaContext)
    }
    
}
