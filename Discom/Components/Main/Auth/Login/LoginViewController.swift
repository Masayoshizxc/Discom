//
//  LoginViewController.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var coordinator: MainCoordinator?
    let ui = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        setupButtons()
    }
    
    func setupButtons() {
        ui.loginBtn.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        ui.registerBtn.addTarget(self, action: #selector(registerTapped), for: .touchUpInside)
        ui.forgotBtn.addTarget(self, action: #selector(forgotTapped), for: .touchUpInside)
    }
    
    @objc func loginTapped() {
        coordinator?.login()
    }
    @objc func registerTapped() {
        coordinator?.register()
    }
    @objc func forgotTapped() {
        coordinator?.forgot()
    }
    
    
}

extension LoginViewController {
    func setupSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
}

