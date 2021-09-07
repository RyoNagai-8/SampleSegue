//
//  ViewController.swift
//  SampleSegue
//
//  Created by RyoNagai on 2021/08/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segueButton.setTitle("segue", for: .normal)
    }
    @IBAction func pressButton(_ sender: Any) {
        print("test")
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
    }
    

}

