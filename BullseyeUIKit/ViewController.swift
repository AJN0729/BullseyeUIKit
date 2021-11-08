//
//  ViewController.swift
//  BullseyeUIKit
//
//  Created by AMStudent on 11/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }

    @IBAction func showAlert() {
        
        let message = "the value of the slider is now: \(currentValue)"
      
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
}

