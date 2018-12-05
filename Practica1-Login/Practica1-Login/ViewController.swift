//
//  ViewController.swift
//  Practica1-Login
//
//  Created by I104-27 on 14/08/18.
//  Copyright © 2018 I104-27. All rights reserved.
//

import UIKit

//Receta
class ViewController: UIViewController {

   //Caracteristicas
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any aditional set up after loading the view, tipically from a nib
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func login(_sender: UIButton) {
        if((txtUser.text?.isEmpty)! || (txtPass.text?.isEmpty)!){
            let alert = UIAlertController(title: "Error", message: "Fill the blanks!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else if (txtUser.text! == "Miguel" && txtPass.text! == "Miguel"){
            let alert = UIAlertController(title: "Correcto", message: "Informacion correcta", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Informacion incorrecta", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }

}


