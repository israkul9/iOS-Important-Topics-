//
//  FirstVC.swift
//  Coordinator-Pattern
//
//  Created by Tusher on 11/27/23.
//

import UIKit

class FirstVC: UIViewController , CoordinatorBoard {

    var mainCoordinator : MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressedOnThirdButton(_ sender: Any) {
        mainCoordinator?.navigateToThirdVC()
        
    }
    @IBAction func didPressedOnSecondButton(_ sender: Any) {
        
        
        
        mainCoordinator?.navigateToSecondVC()
        
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
