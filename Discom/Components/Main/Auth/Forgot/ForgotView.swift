//
//  ForgotView.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit
import SnapKit

class ForgotView: UIView {
    
    lazy var customBackground : UIView = {
        var v = UIView()
        v = Background()
        return v
    }()
    
    lazy var loginView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.layer.cornerRadius = 10
        return v
    }()
    
    lazy var title: UILabel = {
        let l = UILabel()
        l.text = "Забыли пароль"
        l.font = .boldSystemFont(ofSize: 24)
        l.textColor = .black
        return l
    }()
    
    lazy var stepsLabel: UILabel = {
        let l = UILabel()
        l.text = "Введите почту, и мы вышлем ссылку для восстановления доступа"
        l.numberOfLines = 0
        l.textColor = .black
        l.font = .systemFont(ofSize: 12)
        return l
    }()
    
    lazy var emailFieldLabel: UILabel = {
        let l = UILabel()
        l.text = "Email"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    lazy var emailField: ForTextField = {
        let t = ForTextField()
        t.placeholder = "Введите почту"
        t.isSecureTextEntry = true
        t.autocapitalizationType = .none
        t.autocorrectionType = .no
        return t
    }()
    
    lazy var sendBtn: UIButton = {
        let b = UIButton()
        b.setTitle("Отправить", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 12)
        b.backgroundColor = R.color.button()
        b.layer.cornerRadius = 5
        return b
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension ForgotView {
    func setupSubviews() {
        addSubview(customBackground)
        addSubview(loginView)
        loginView.addSubview(title)
        loginView.addSubview(stepsLabel)
        loginView.addSubview(emailFieldLabel)
        loginView.addSubview(emailField)
        loginView.addSubview(sendBtn)
    }
    
    func setupConstraints() {
        customBackground.snp.makeConstraints{ make in
            make.top.left.right.bottom.equalToSuperview()
        }
        loginView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(293)
            make.top.equalToSuperview().inset(269)
        }
        title.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(20)
        }
        stepsLabel.snp.makeConstraints{ make in
            make.left.right.equalToSuperview().inset(56)
            make.top.equalTo(title.snp.bottom).offset(22)
        }
        emailFieldLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(57)
            make.top.equalTo(stepsLabel.snp.bottom).offset(23)
        }
        emailField.snp.makeConstraints{ make in
            make.left.right.equalToSuperview().inset(57)
            make.top.equalTo(emailFieldLabel.snp.bottom).offset(3)
            make.height.equalTo(30)
        }
        sendBtn.snp.makeConstraints{ make in
            make.left.right.equalToSuperview().inset(57)
            make.top.equalTo(emailField.snp.bottom).offset(39)
        }
    }
}
