//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Gonzalo Campos on 05/07/23.
//

import UIKit

class ViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Button", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonWithAutoLayout()
    }
}

// MARK: - AutoLayout
extension ViewController {
    func setButtonWithAutoLayout() {
        button.translatesAutoresizingMaskIntoConstraints = false
        // note: view must be added BEFORE activating constraints
        self.view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),

            button.heightAnchor.constraint(equalToConstant: 44),
            button.widthAnchor.constraint(equalToConstant: 120),
        ])
    }
}

// MARK: - Frames
extension ViewController {
    // frames is a way of placing views, but it's not the recommended one
    func setButtonWithFrames() {
        button.frame = CGRect(x: 100, y: 300,
                              width: 120, height: 44)
        self.view.addSubview(button)
    }
}
