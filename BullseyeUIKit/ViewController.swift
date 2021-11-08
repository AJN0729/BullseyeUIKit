//
//  ViewController.swift
//  BullseyeUIKit
//
//  Created by AMStudent on 11/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
      
        let alert = UIAlertController(title: "Hello World", message: "Hi", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

