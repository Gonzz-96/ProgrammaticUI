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
        setButtonWithFrames()
    }

    // frames is a way of placing views, but it's not the recommended one
    func setButtonWithFrames() {
        button.frame = CGRect(x: 100, y: 300,
                              width: 120, height: 44)
        self.view.addSubview(button)
    }
}

