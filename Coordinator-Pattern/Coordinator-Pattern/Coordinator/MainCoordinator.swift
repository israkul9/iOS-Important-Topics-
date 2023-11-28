//
//  MainCoordinator.swift
//  Coordinator-Pattern
//
//  Created by Tusher on 11/27/23.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    var navigationController: UINavigationController
    
    init(with navigationController : UINavigationController){
        self.navigationController = navigationController
    }
    
    func configureRootViewController() {
        let firstVC = FirstVC.instantiateFromStoryBoard()
        firstVC.mainCoordinator = self
        self.navigationController.pushViewController(firstVC, animated: true)
    }
    
    func navigateToSecondVC(){
        
        let secondVC = SecondVC.instantiateFromStoryBoard()
        self.navigationController.pushViewController(secondVC, animated: true)
    }
    
    func navigateToThirdVC(){
        
        let thirdVC = ThirdVC.instantiateFromStoryBoard()
        self.navigationController.pushViewController(thirdVC, animated: true)
    }
}
