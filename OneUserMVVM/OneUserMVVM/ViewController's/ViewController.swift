//
//  ViewController.swift
//  OneUserMVVM
//
//  Created by Герман on 15.09.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldLogin: UITextField!
    var login : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func button(_ sender: Any) {
        
        guard let userLogin = textFieldLogin.text else {
            return textFieldLogin.placeholder = "Введите login"
        }
        login = userLogin
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let userVC = segue.destination as! UserViewController
        
        userVC.login = login
        
    }
    
}

