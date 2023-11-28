//
//  Coordinator.swift
//  Coordinator-Pattern
//
//  Created by Tusher on 11/27/23.
//

import Foundation
import UIKit

protocol Coordinator : AnyObject {
    
  var navigationController : UINavigationController { get set }
  func configureRootViewController()
    
}
