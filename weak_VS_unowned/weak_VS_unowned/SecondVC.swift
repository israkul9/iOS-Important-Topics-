//
//  SecondVC.swift
//  weak_VS_unowned
//
//  Created by Israkul Tushaer-81 on 12/10/23.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        // Do any additional setup after loading the view.
    }
    
    func printHelloWorld(){
        print("Hello World : from initUI")
    }
    
    func initUI(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){
            self.printHelloWorld()
        }
        
        /*
        NotificationCenter.default.addObserver( forName: Notification.Name("Check"), object: nil , queue : .main){ [self] notification in
            
            self.printHelloWorld()
            
        }
         */
        
    }

    deinit {
        debugPrint("secondVC de-allocated")
    }

}
