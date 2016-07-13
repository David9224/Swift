//
//  ViewController_TipoQueso.swift
//  CreaTuPizza
import UIKit

class ViewController_TipoQueso: UIViewController {


    @IBOutlet weak var lblTamanioResult: UILabel!
    @IBOutlet weak var lblResultadoQueso: UILabel!
    @IBOutlet weak var lblTipoMasaResult: UILabel!



    var ResultTamanio:String=""
    var ResultTipoMasa:String=""
    var ResultTipoQueso:String=""

    @IBOutlet weak var txtResultado: UILabel!


    override func viewWillAppear(animated: Bool) {


        lblTamanioResult.text = String(ResultTamanio)
        lblTipoMasaResult.text = String(ResultTipoMasa)


    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let sigVista=segue.destinationViewController as! ViewController_Ingredientes
        sigVista.ResultTamanio = String(lblTamanioResult.text!)
        sigVista.ResultTipoMasa = String (lblTipoMasaResult.text!)
        sigVista.ResultTipoQueso = String (lblResultadoQueso.text!)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnMozarella(sender: AnyObject) {

        lblResultadoQueso.text = String("Mozarella")

    }


    @IBAction func btnCheddar(sender: AnyObject) {

        lblResultadoQueso.text = String("Cheddar")

    }


    @IBAction func btnParmesano(sender: AnyObject) {

        lblResultadoQueso.text = String("Parmesano")

    }


    @IBAction func btnSinQueso(sender: AnyObject) {

        lblResultadoQueso.text = String("Sin Queso")
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
