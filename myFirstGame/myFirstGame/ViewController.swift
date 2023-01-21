//
//  ViewController.swift
//  myFirstGame
//
//  Created by Admin on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert() {
        let message = " The value of the slider is now \(currentValue)" + "\n Target value is now: \(targetValue)"
        let alert = UIAlertController(title: "HELLO, World ", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Amesome", style: .default)
        
        alert.addAction(action)
        
        present(alert, animated: true)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabel()
    }
    
    func updateLabel() {
        targetLabel.text = String(targetValue)
    }
}

