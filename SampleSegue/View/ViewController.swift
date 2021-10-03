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
    var str = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segueButton.setTitle("segue", for: .normal)
        label.text = str
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

