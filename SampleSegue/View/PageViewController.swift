//
//  PageViewController.swift
//  SampleSegue
//
//  Created by RyoNagai on 2021/08/16.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("PageViewController")

        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    func getFirst() -> FirstViewController {
        return storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
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
