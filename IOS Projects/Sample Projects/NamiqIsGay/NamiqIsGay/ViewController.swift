//
//  ViewController.swift
//  NamiqIsGay
//
//  Created by Aydan Haqverdili on 1/10/22.
//

import UIKit

class ViewController: UIViewController {
    let button: UIButton = {
        let button = UIButton()

        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap To Animate", for: [])
        button.setTitleColor(.black, for: [])

        return button
    }()

    lazy var buttonBottomAnchorConstraint = self.button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)

    lazy var buttonTopAnchorConstraint = self.button.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)

    override func viewDidLoad() {
        super.viewDidLoad()

        setupButtonConstraints()
        setupButtonActionHandling()
    }

    func setupButtonConstraints() {
        self.view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            buttonBottomAnchorConstraint
        ])
    }

    func setupButtonActionHandling() {
        button.addTarget(self, action: #selector(buttonTapAction), for: .touchUpInside)
    }

    @objc
    func buttonTapAction() {
        buttonTopAnchorConstraint.isActive.toggle()
        buttonBottomAnchorConstraint.isActive.toggle()

        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}
