//
//  ViewController.swift
//  Conexion
//
//  Created by David Aristizabal on 1/06/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        asincrono()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sincrono(){
        let urls = "http://dia.ccm.itesm.mx/"
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
        print(texto!)
    }
    
    func asincrono(){
        let urls = "http://dia.ccm.itesm.mx"
        let url = NSURL(string: urls)
        let sesion = NSURLSession.sharedSession()
        let bloque = { (datos: NSData?, resp: NSURLResponse?, error: NSError?) -> Void in
            let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
            print(texto!)
        }
        
        let dt = sesion.dataTaskWithURL(url!, completionHandler: bloque)
        dt.resume()
        print("Antes O Despues")
    }
}

