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
            // other constrains
//            button.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 60),
//            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60),
//            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
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
        let (x, y, width, height) = getButtonPositionAndDimensions()
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        self.view.addSubview(button)
    }

    private func getButtonPositionAndDimensions() -> (CGFloat, CGFloat, CGFloat, CGFloat) {
        let screenSize = self.view.frame.size
        let screenCenterX = screenSize.width / 2.0
        let screenCenterY = screenSize.height / 2.0
        let buttonWidth = 120.0
        let buttonHeight = 44.0
        return (screenCenterX - buttonWidth/2.0, screenCenterY - buttonHeight/2.0,
                    buttonWidth, buttonHeight)
    }
}
