//
//  CoordinatorBoard.swift
//  Coordinator-Pattern
//
//  Created by Tusher on 11/27/23.
//

import Foundation
import UIKit

protocol CoordinatorBoard : UIViewController {
    static func instantiateFromStoryBoard()->Self
}

extension CoordinatorBoard {
    static func instantiateFromStoryBoard()->Self {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let id = String(describing: self)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
    
}
