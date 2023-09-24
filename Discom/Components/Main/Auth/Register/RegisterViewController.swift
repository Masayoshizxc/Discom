//
//  RegisterViewController.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var coordinator: MainCoordinator?
    let ui = RegisterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        setupButtons()
    }
    
    func setupButtons() {
        ui.registerBtn.addTarget(self, action: #selector(registerTapped), for: .touchUpInside)
        ui.loginBtn.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
    
    @objc func registerTapped() {
        coordinator?.start()
    }
    @objc func loginTapped() {
        coordinator?.start()
    }
    
    
}

extension RegisterViewController {
    func setupSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
}

