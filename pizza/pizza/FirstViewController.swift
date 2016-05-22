//
//  FirstViewController.swift
//  pizza
//
//  Created by David Aristizabal on 19/05/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var tamano : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //optPequena.setOn(true, animated: true)
        //optMediana.setOn(false, animated: true)
        //optGrande.setOn(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressPequena(sender: AnyObject) {
        tamano = "Pequeña"
    }
    
    
    @IBAction func pressMediana(sender: AnyObject) {
        tamano = "Mediana"
    }
    
    @IBAction func pressGrande(sender: AnyObject) {
        tamano = "Grande"
    }
    
    @IBAction func siguiente(sender: AnyObject) {
        tamanoPizza()
    }
    
    func tamanoPizza() -> String{
        return tamano
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado : String = tamanoPizza()
        let sigVista = segue.destinationViewController as! SecondViewController
        sigVista.tamanoString = resultado
    }
    
}

