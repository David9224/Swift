//
//  quesoControler.swift
//  pizza
//
//  Created by David Aristizabal on 22/05/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class quesoControler: UIViewController {
    
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    @IBOutlet weak var lblTamano: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func pressCheddar(sender: AnyObject) {
        queso = "Cheddar"
    }
    
    @IBAction func pressMozzarella(sender: AnyObject) {
        queso = "Mozzarella"
    }
    
    
    @IBAction func pressParmesano(sender: AnyObject) {
        queso = "Parmesano"
    }
    
    override func viewWillAppear(animated: Bool) {
        lblMasa.text = masa
        lblTamano.text = tamano
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamanoSig = tamano
        let masaSig = masa
        let quesoSig = queso
        let sigVista = segue.destinationViewController as! ingredientesController
        sigVista.tamano = tamanoSig
        sigVista.masa = masaSig
        sigVista.queso = quesoSig
    }
}
