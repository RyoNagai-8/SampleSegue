//
//  ViewController.swift
//  SampleSegue
//
//  Created by RyoNagai on 2021/08/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segueButton.setTitle("segue", for: .normal)
        label.text = UserDefaults.standard.string(forKey: "str")
    }
    @IBAction func pressButton(_ sender: Any) {
        print("pressButton")
    }
    @IBAction func pressCalculationButton(_ sender: Any) {
        print("pressCalculationButton")
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        print("myUnwindAction")
    }
    
    
}

