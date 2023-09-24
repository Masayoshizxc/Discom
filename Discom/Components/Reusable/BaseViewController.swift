//
//  BaseViewController.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit
import SnapKit

class Background: UIView {
    
    lazy var backgroundImage: UIImageView = {
        let i = UIImageView()
        i.image = R.image.background()
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let i = R.image.background()
        backgroundColor = .white
        addSubview(backgroundImage)
        backgroundImage.snp.makeConstraints{ make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
