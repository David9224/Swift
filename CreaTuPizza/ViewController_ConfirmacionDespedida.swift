//
//  ViewController_ConfirmacionDespedida.swift
//  CreaTuPizza

import UIKit

class ViewController_ConfirmacionDespedida: UIViewController {

    var ResultTamanio:String=""
    var ResultTipoMasa:String=""
    var ResultTipoQueso:String=""


    @IBOutlet weak var lblResultadoTamanioP: UILabel!
    @IBOutlet weak var lblResultadoMasaP: UILabel!
    @IBOutlet weak var lblResultadoQuesoP: UILabel!
    @IBOutlet weak var txtResultados: UITextView!


    var ordenDeViewCocinar = ["":[""]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func viewWillAppear(animated: Bool) {


        lblResultadoTamanioP.text = String(ResultTamanio)
        lblResultadoMasaP.text = String(ResultTipoMasa)
        lblResultadoQuesoP.text = String(ResultTipoQueso)


        var resultado = "\n"
        for (k,v) in ordenDeViewCocinar {
            resultado = resultado + k + "\n"
            for dec2 in v {
                resultado = resultado + "  \(dec2)"
            }
            resultado = resultado + "\n"
        }


        self.txtResultados.text = resultado
        
        
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

}
