//
//  ViewController.swift
//  BullseyeUIKit
//
//  Created by AMStudent on 11/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 50
    var targetValue = 0

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert() {
        
        let message = "the value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)"
      
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)

        startNewRound()
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }

    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
    }
}

