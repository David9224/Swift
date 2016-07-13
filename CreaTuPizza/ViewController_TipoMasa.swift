//
//  ViewController_TipoMasa.swift
//  CreaTuPizza

import UIKit

class ViewController_TipoMasa: UIViewController {

    @IBOutlet weak var lblResultadoTipoDeMasa: UILabel!
    @IBOutlet weak var lblResultadoAnterior: UILabel!

    var lastResults:String=""



    override func viewWillAppear(animated: Bool) {

        lblResultadoAnterior.text = String(lastResults)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let sigVista=segue.destinationViewController as! ViewController_TipoQueso
        sigVista.ResultTamanio = String( lblResultadoAnterior.text!)
        sigVista.ResultTipoMasa = String ( lblResultadoTipoDeMasa.text!)

    }

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnPizzaDelgada(sender: AnyObject) {

lblResultadoTipoDeMasa.text = String("Delgada")

    }


    @IBAction func btnPizzaCrujiente(sender: AnyObject) {

        lblResultadoTipoDeMasa.text = String("Crujiente")

    }


    @IBAction func btnPizzaGruesa(sender: AnyObject) {

lblResultadoTipoDeMasa.text = String("Gruesa")

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
