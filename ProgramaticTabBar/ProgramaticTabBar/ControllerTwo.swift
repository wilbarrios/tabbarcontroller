//
//  ControllerTwo.swift
//  ProgramaticTabBar
//
//  Created by Wilmer Barrios on 13/04/21.
//

import Foundation
import UIKit

class ControllerTwo: UIViewController {
    var onButtonClicked: (() -> Void)?
    
    private let button: UIButton = {
        let b = UIButton()
        b.backgroundColor = UIColor.white
        b.setTitle("To Controller One", for: .normal)
        b.setTitleColor(.systemBlue, for: .normal)
        b.addTarget(self, action: #selector(buttonHandler), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    @objc
    private func buttonHandler() {
        onButtonClicked?()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
        view.backgroundColor = UIColor.blue
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
