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
    private let controllerTwo = ControllerTwo()
    
    private lazy var rootController: RootTabBarController = {
        let c = RootTabBarController()
        c.viewControllers = [controllerOne, controllerTwo]
        return c
    }()
    
    private func setupActions() {
        controllerOne.onButtonClicked = { [weak self] in self?.setSelectedIndex(1) }
        controllerTwo.onButtonClicked = { [weak self] in self?.setSelectedIndex(0) }
    }
    
    private func setSelectedIndex(_ index: Int) {
        self.rootController.selectedIndex = index
    }
    
    func getRootController() -> UIViewController {
        setupActions()
        return rootController
    }
}
