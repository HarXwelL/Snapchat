//
//  ViewController.swift
//  Snapchat
//
//  Created by Josue Parisaca Martinez on 5/27/22.
//  Copyright © 2022 empresa. All rights reserved.
//

import UIKit
//import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {(user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el sisguiente error: \(error)")
            } else {
                print("Inicio de sesion exitoso")
            }
        }
    }
    

}

