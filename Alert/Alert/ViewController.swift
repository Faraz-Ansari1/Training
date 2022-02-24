//
//  ViewController.swift
//  Alert
//
//  Created by daffolapmac-82 on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ShowAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "iOS Dev", message:
               "Hey There!", preferredStyle: .alert)
           alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

           self.present(alertController, animated: true, completion: nil)    }
    
}

