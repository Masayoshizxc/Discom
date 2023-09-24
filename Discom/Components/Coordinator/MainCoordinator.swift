//
//  MainCoordinator.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var finishDelegate: CoordinatorFinishDelegate?
    var parentCoordinator: Coordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func register() {
        let vc = RegisterViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func forgot() {
        let vc = ForgotViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func login() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
