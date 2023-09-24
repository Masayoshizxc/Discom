//
//  ForgotViewController.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit

class ForgotViewController: UIViewController {
    
    var coordinator: MainCoordinator?
    let ui = ForgotView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
        setupButtons()
    }
    
    func setupButtons() {
        ui.sendBtn.addTarget(self, action: #selector(sendTapped), for: .touchUpInside)
    }
    
    @objc func sendTapped() {
        coordinator?.start()
    }
    
    
}

extension ForgotViewController {
    func setupSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
}

