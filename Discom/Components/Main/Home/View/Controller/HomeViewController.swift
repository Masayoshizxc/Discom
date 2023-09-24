//
//  HomeViewController.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var coordinator: HomeCoordinator?
    let ui = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ui
    }
    
    
}

extension HomeViewController {
    func setupSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
}

