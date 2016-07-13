//
//  InterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by David Aristizabal on 29/06/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lbl: WKInterfaceLabel!
    @IBOutlet var picker: WKInterfacePicker!
    var itemsArray : Array = Array<WKPickerItem>()
    var tamano : String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let item1 = WKPickerItem()
        item1.title = "Pequeña"
        item1.accessoryImage = WKImage(imageName: "Pequeña.png")
        
        let item2 = WKPickerItem()
        item2.title = "Mediana"
        item2.accessoryImage = WKImage(imageName: "Mediana.png")
        
        let item3 = WKPickerItem()
        item3.title = "Grande"
        item3.accessoryImage = WKImage(imageName: "Grande.png")
        
        itemsArray = [item1, item2, item3]
        
        picker.setItems(itemsArray)
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
        tamano = item.title!
        lbl.setText(String(item.title!))
    }
}
