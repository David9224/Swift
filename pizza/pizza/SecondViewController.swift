//
//  SecondViewController.swift
//  pizza
//
//  Created by David Aristizabal on 19/05/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tamano: UILabel!
    var masa : String = ""
    var tamanoString : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func delgadaPress(sender: AnyObject) {
        masa = "Delgada"
    }
    
    
    @IBAction func crujientePress(sender: AnyObject) {
        masa = "Crujiente"
    }
    
    
    @IBAction func gruesaPress(sender: AnyObject) {
        masa = "Gruesa"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamanoSig = tamanoString
        let masaSig = masa
        let sigVista = segue.destinationViewController as! quesoControler
        sigVista.tamano = tamanoSig
        sigVista.masa = masaSig
    }
    
    override func viewWillAppear(animated: Bool) {
        tamano.text = tamanoString
    }
}

