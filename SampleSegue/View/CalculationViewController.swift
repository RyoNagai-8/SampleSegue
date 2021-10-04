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

//        ScoreNumber.text = "1"
        ScoreNumber.becomeFirstResponder()
        //ScoreNumber.resignFirstResponder()
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if ScoreNumber.text != "" {
            let score = ScoreNumber.text!
            number = Int(score)!
            UserDefaults.standard.set(score, forKey: "str")
            print(number + 2)
        } else{
            print("saveButton")
        }
        ScoreNumber.resignFirstResponder()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "test" {
//            let nextView = segue.destination as! ViewController
//            nextView.str = ScoreNumber.text!
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
