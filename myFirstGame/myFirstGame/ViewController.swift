//
//  ViewController.swift
//  myFirstGame
//
//  Created by Admin on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "HELLO, World ", message: "hi", preferredStyle: .alert)
        let action = UIAlertAction(title: "Amesome", style: .default)
        
        alert.addAction(action)
        
        present(alert, animated: true)
    }
    
    
}

