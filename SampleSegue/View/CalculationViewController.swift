//
//  CalculationViewController.swift
//  SampleSegue
//
//  Created by RyoNagai on 2021/09/17.
//

import UIKit

class CalculationViewController: UIViewController {
    
    @IBOutlet weak var ScoreNumber: UITextField!
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScoreNumber.becomeFirstResponder()
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if ScoreNumber.text != "" {
            let score = ScoreNumber.text!
            number = Int(score)!
            UserDefaults.standard.set(score, forKey: "str")
        } else{
            print("else: saveButton")
        }
        ScoreNumber.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("prepare: ",segue.identifier ?? "nil")
        if segue.identifier == "test" {
            let nextView = segue.destination as! ViewController
            nextView.label.text = ScoreNumber.text
        }
    }
    
    
    
    
}
