//
//  ViewController.swift
//  Calculadora
//
//  Created by David Aristizabal on 9/05/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estaura: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate=self
        estaura.delegate=self
        
    }
    
    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto: CGPoint
        punto = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    
    @IBAction func backGroundTap(sender: UIControl){
        peso.resignFirstResponder()
        estaura.resignFirstResponder()
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField){
            sender.resignFirstResponder()//Desaparece el teclado
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcularIMC(sender: AnyObject) {
        
        imc()
    }
    
    func imc() -> Double{
        var IMC:Double
        let pesoLocal:Double?
        pesoLocal=Double(self.peso.text!)
        let estaturaLocal:Double=Double(self.estaura.text!)!
        IMC = pesoLocal!/(estaturaLocal*estaturaLocal)
        return IMC
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = imc()
        let sigVista = segue.destinationViewController as! VistaResultados
        sigVista.indiceIM = resultado
    }
    
}

