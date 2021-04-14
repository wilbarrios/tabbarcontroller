//
//  ControllerOne.swift
//  ProgramaticTabBar
//
//  Created by Wilmer Barrios on 13/04/21.
//

import Foundation
import UIKit

class ControllerOne: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
    }
    
    private func setupLayout() {
        self.view.backgroundColor = UIColor.red
    }
}
