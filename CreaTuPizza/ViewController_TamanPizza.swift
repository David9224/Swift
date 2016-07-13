//
//  ViewController_TamanPizza.swift
//  CreaTuPizza

import UIKit

class ViewController_TamanPizza: UIViewController {

    @IBOutlet weak var lblResultado: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! ViewController_TipoMasa


        sigVista.lastResults = String( lblResultado.text! )

    }


    @IBAction func btnGrande(sender: AnyObject) {

lblResultado.text = String("Grande")

    }

    @IBAction func btnMediana(sender: AnyObject) {

lblResultado.text = String("Mediana")

    }


    @IBAction func btnChica(sender: AnyObject) {

lblResultado.text = String("Chica")

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
