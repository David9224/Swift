//
//  ViewController_Ingredientes.swift
//  CreaTuPizza
import UIKit

class ViewController_Ingredientes: UIViewController {

    @IBOutlet weak var lblResultadoTamanio: UILabel!
    @IBOutlet weak var lblResultadoTipoMasa: UILabel!
    @IBOutlet weak var lblResultadoTipoQueso: UILabel!


    var ResultTamanio:String=""
    var ResultTipoMasa:String=""
    var ResultTipoQueso:String=""
    var Ingrediente:Int = 0

//Area de switches


    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPepperoni: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swPimiento: UISwitch!
    @IBOutlet weak var swPinia: UISwitch!
    @IBOutlet weak var swAnchoa: UISwitch!
    @IBOutlet weak var swChorizo: UISwitch!
    @IBOutlet weak var swFrijoles: UISwitch!


//Termina área de switches

    var arrayIngredientesGenerales = ["":[""]]



    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }


    override func viewWillAppear(animated: Bool) {


        lblResultadoTamanio.text = String(ResultTamanio)
        lblResultadoTipoMasa.text = String(ResultTipoMasa)
        lblResultadoTipoQueso.text = String(ResultTipoQueso)

        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let sigVista=segue.destinationViewController as! ViewController_ConfirmacionDespedida

        
        sigVista.ResultTamanio = String(lblResultadoTamanio.text!)
        sigVista.ResultTipoMasa = String (lblResultadoTipoMasa.text!)
        sigVista.ResultTipoQueso = String (lblResultadoTipoQueso.text!)


print(arrayIngredientesGenerales)

        sigVista.ordenDeViewCocinar = arrayIngredientesGenerales


    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnConfirmacionDespedida(sender: AnyObject) {

        var arrayIngredients = [""]
        if( self.swJamon.on ) { arrayIngredients.append("Jamon")}
        if(self.swPepperoni.on) {arrayIngredients.append("Pepperoni")}
        if(self.swPavo.on) {arrayIngredients.append("Pavo")}
        if(self.swSalchicha.on) {arrayIngredients.append("Salchicha")}
        if(self.swCebolla.on) {arrayIngredients.append("Cebolla")}
        if(self.swPimiento.on) {arrayIngredients.append("Pimiento")}
        if(self.swAnchoa.on) {arrayIngredients.append("Anchoa")}
        if(self.swChorizo.on) {arrayIngredients.append("Chorizo")}
        if(self.swFrijoles.on) {arrayIngredients.append("Frijoles")}
        arrayIngredients.removeFirst()

        arrayIngredientesGenerales["Ingredientes"] = arrayIngredients


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
