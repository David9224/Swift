//
//  VistaResultadosViewController.swift
//  Calculadora
//
//  Created by David Aristizabal on 17/05/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class VistaResultados: UIViewController {

    var indiceIM : Double = 0
    @IBOutlet weak var resultados: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        resultados.text = String(indiceIM)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
