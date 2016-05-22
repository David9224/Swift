//
//  ingredientesController.swift
//  pizza
//
//  Created by David Aristizabal on 22/05/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class ingredientesController: UIViewController {

    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = [String]()
    var totalIngredientes : Int = 0
    @IBOutlet weak var lblTamano: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    @IBOutlet weak var siguiente: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblMasa.text = masa
        lblTamano.text = tamano
        lblQueso.text = queso
    }

    @IBAction func pressAceituna(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Aceitunas")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressPeperoni(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Peperoni")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressAnchoa(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Anchoa")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressPina(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Piña")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressCebolla(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Cebolla")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressSalchicha(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Salchicha")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressJamon(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Jamon")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
    @IBAction func pressPavo(sender: AnyObject) {
        totalIngredientes += 1
        ingredientes.append("Pavo")
        if totalIngredientes == 4 {
            siguiente.enabled = true
        }
    }
    
}
