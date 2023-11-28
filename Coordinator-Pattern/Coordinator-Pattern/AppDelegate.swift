//
//  AppDelegate.swift
//  Coordinator-Pattern
//
//  Created by Tusher on 11/27/23.
//





// Coordinator patterns seperates the responsibility of Navigation from Viewcontrollers




import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

 var window: UIWindow?
    var mainCoordinator : MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
      
        self.gotoRootVC()
        return true
    }
    
    
    func gotoRootVC(){
        let navigationController = UINavigationController()
        mainCoordinator = MainCoordinator(with: navigationController)
        let window = UIWindow()
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
        mainCoordinator?.configureRootViewController()
    }


}

