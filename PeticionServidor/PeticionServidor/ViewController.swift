//
//  ViewController.swift
//  PeticionServidor
//
//  Created by David Aristizabal on 7/06/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var isbn: UITextField!
    @IBOutlet weak var resultado: UITextView!
    
    @IBOutlet weak var titulo: UITextView!
    @IBOutlet weak var autores: UITextView!
    @IBOutlet weak var portada: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        isbn.delegate = self
        resultado.delegate = self
        if Reachability.isConnectedToNetwork() == true {
            print("Internet connection OK")
        } else {
            print("Internet connection FAILED")
            let alert = UIAlertView(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        resultado.text = ""
        isbn.resignFirstResponder()
        searchIsbn()
        return true
    }

    func searchIsbn(){
        
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:\(self.isbn.text!)"
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
        self.resultado.text = String(texto!)
        do{
            let json = try NSJSONSerialization.JSONObjectWithData(datos!, options: NSJSONReadingOptions.MutableLeaves)
            let dico1 = json as! NSDictionary
            let dico2 = dico1["ISBN:"+isbn.text!] as! NSDictionary
            
            titulo.text = dico2["title"] as! NSString as String
            
            let dico3 = dico2["authors"] as! NSArray as Array
            print(dico3[0])
            let dico4 = dico3[0] as! NSDictionary
            
            autores.text = dico4["name"] as! NSString as String
        }catch _ {
        }
        
    }
    
    func buscarImagen(imagen : String) -> [UIImage]{
        var imgs = [UIImage]()
        let urls = "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&rsz=8&q="+imagen

        let url = NSURL(string: urls)
        let datos = NSData(contentsOfURL: url!)
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(datos!, options: NSJSONReadingOptions.MutableLeaves)
            print(json)
            
        }catch {
            
        }
        return imgs
    }
}

