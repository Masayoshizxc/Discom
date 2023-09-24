//
//  ProfileViewController.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var coordinator: ProfileCoordinator?
    let ui = ProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
    }
    
    
}

extension ProfileViewController {
    func setupSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
}

