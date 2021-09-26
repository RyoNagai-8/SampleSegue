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

        ScoreNumber.text = "1"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if ScoreNumber.text != "" {
            let score = ScoreNumber.text!
            number = Int(score)!
            print(number + 2)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
