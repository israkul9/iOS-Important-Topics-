//
//  ViewController.swift
//  weak_VS_unowned
//
//  Created by Israkul Tushaer-81 on 12/10/23.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPressedOnGO(_ sender: Any) {
        
        // Assuming your storyboard is named "Main" and the view controller identifier is "MyViewController"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            
            navigationController?.pushViewController(viewController, animated: true)
        }

        
    }
    
}

