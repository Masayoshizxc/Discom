//
//  LofinView.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
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
        l.text = "Вход в аккаунт"
        l.font = .boldSystemFont(ofSize: 24)
        l.textColor = .black
        return l
    }()
    
    lazy var numberFieldLabel: UILabel = {
        let l = UILabel()
        l.text = "Номер телефона"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    lazy var numberField: ForTextField = {
        let t = ForTextField()
        t.placeholder = "+996 XXX XXX XXX"
        return t
    }()
    
    lazy var passwordFieldLabel: UILabel = {
        let l = UILabel()
        l.text = "Пароль"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    lazy var passwordField: ForTextField = {
        let t = ForTextField()
        t.placeholder = "Введите пароль"
        t.isSecureTextEntry = true
        t.autocapitalizationType = .none
        t.autocorrectionType = .no
        return t
    }()
    
    lazy var loginBtn: UIButton = {
        let b = UIButton()
        b.setTitle("Вход", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 12)
        b.backgroundColor = R.color.button()
        b.layer.cornerRadius = 5
        return b
    }()
    
    lazy var forgotBtn: UIButton = {
        let b = UIButton()
        b.backgroundColor = .none
        b.setTitle("Забыли пароль?", for: .normal)
        b.setTitleColor(.systemBlue, for: .normal)
        b.titleLabel?.font = .systemFont(ofSize: 12)
        return b
    }()
    
    lazy var registerLabel: UILabel = {
        let l = UILabel()
        l.text = "У вас нет аккаунта?"
        l.textColor = .black
        l.font = .systemFont(ofSize: 12)
        return l
    }()
    
    lazy var registerBtn: UIButton = {
        let b = UIButton()
        b.backgroundColor = .none
        b.setTitle("Зарегистрироваться", for: .normal)
        b.setTitleColor(.systemBlue, for: .normal)
        b.titleLabel?.font = .systemFont(ofSize: 12)
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

extension LoginView {
    func setupSubviews() {
        addSubview(customBackground)
        addSubview(loginView)
        loginView.addSubview(title)
        loginView.addSubview(numberFieldLabel)
        loginView.addSubview(numberField)
        loginView.addSubview(passwordFieldLabel)
        loginView.addSubview(passwordField)
        loginView.addSubview(loginBtn)
        loginView.addSubview(forgotBtn)
        loginView.addSubview(registerLabel)
        loginView.addSubview(registerBtn)
    }
    
    func setupConstraints() {
        customBackground.snp.makeConstraints{ make in
            make.top.left.right.bottom.equalToSuperview()
        }
        loginView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(378)
            make.top.equalToSuperview().inset(164)
        }
        title.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(20)
        }
        numberFieldLabel.snp.makeConstraints{ make in
            make.top.equalTo(title.snp.bottom).offset(24)
            make.left.equalToSuperview().inset(57)
        }
        numberField.snp.makeConstraints{ make in
            make.top.equalTo(numberFieldLabel.snp.bottom).offset(3)
            make.left.equalTo(numberFieldLabel)
            make.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
        }
        passwordFieldLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(57)
            make.top.equalTo(numberField.snp.bottom).offset(13)
        }
        passwordField.snp.makeConstraints{ make in
            make.top.equalTo(passwordFieldLabel.snp.bottom).offset(3)
            make.left.equalTo(passwordFieldLabel)
            make.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
        }
        loginBtn.snp.makeConstraints{ make in
            make.left.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
            make.top.equalTo(passwordField.snp.bottom).offset(30)
        }
        forgotBtn.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginBtn.snp.bottom).offset(30)
        }
        registerLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(50)
            make.top.equalTo(forgotBtn.snp.bottom).offset(20)
        }
        registerBtn.snp.makeConstraints{ make in
            make.left.equalTo(registerLabel.snp.right).offset(8)
            make.centerY.equalTo(registerLabel)
        }
        
        
        
    }
}
