//
//  ApplicationController.swift
//  ProgramaticTabBar
//
//  Created by Wilmer Barrios on 13/04/21.
//

import Foundation
import UIKit

class ApplicationController {
    private let controllerOne = ControllerOne()
    
    private lazy var rootController: RootTabBarController = {
        let c = RootTabBarController()
        c.viewControllers = [controllerOne]
        return c
    }()
    
    func getRootController() -> UIViewController {
        return rootController
    }
}
