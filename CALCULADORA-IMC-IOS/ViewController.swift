//
//  ViewController.swift
//  CALCULADORA-IMC-IOS
//
//  Created by Turno Mananas on 19/11/2026.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDescriptionLabel: UILabel!
    
    var height = 160.0
    var weight = 70.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightChanged(_ sender: UISlider) {
        height = Double(sender.value).rounded()
        heightLabel.text = "\(Int(height))"
    }
    
    @IBAction func weightChanged(_ sender: UIStepper) {
        weight = sender.value
        weightLabel.text = "\(Int(weight))"
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        let heightInMeters = height / 100
        let result = weight / pow(heightInMeters, 2)
        resultLabel.text = String(format: "%.2f", result)
        
        switch result {
        case 00.0..<18.5:
            resultDescriptionLabel.text = "Bajo peso"
        case 18.5..<25.0:
            resultDescriptionLabel.text = "Peso normal"
        case 25.0..<30.0:
            resultDescriptionLabel.text = "Sobrepeso"
        case 25.0..<30.0:
            resultDescriptionLabel.text = "Obesidad"
        default:
            resultDescriptionLabel.text = "Obesidad extrema"
        }
    }
}
        




