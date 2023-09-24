//
//  RegisterView.swift
//  Discom
//
//  Created by Adilet on 24/9/23.
//

import UIKit
import SnapKit

class RegisterView: UIView {
    
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
        l.text = "Регистрация"
        l.font = .boldSystemFont(ofSize: 24)
        l.textColor = .black
        return l
    }()
    
    lazy var nameFieldLabel: UILabel = {
        let l = UILabel()
        l.text = "Имя"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    lazy var nameField: ForTextField = {
        let t = ForTextField()
        t.placeholder = "Имя"
        return t
    }()
    
    lazy var surnameFieldLabel: UILabel = {
        let l = UILabel()
        l.text = "Фамилия"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    lazy var surnameField: ForTextField = {
        let t = ForTextField()
        t.placeholder = "Фамилия"
        return t
    }()
    
    lazy var emailFieldLabel: UILabel = {
        let l = UILabel()
        l.text = "Почта"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    lazy var emailField: ForTextField = {
        let t = ForTextField()
        t.placeholder = "Почта"
        return t
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
    
    lazy var registerBtn: UIButton = {
        let b = UIButton()
        b.setTitle("Регистрация", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 12)
        b.backgroundColor = R.color.button()
        b.layer.cornerRadius = 5
        return b
    }()
    
    lazy var loginLabel: UILabel = {
        let l = UILabel()
        l.text = "У вас уже есть аккаунт?"
        l.textColor = .black
        l.font = .systemFont(ofSize: 12)
        return l
    }()
    
    lazy var loginBtn: UIButton = {
        let b = UIButton()
        b.backgroundColor = .none
        b.setTitle("Войти", for: .normal)
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

extension RegisterView {
    func setupSubviews() {
        addSubview(customBackground)
        addSubview(loginView)
        loginView.addSubview(title)
        loginView.addSubview(nameFieldLabel)
        loginView.addSubview(nameField)
        loginView.addSubview(surnameFieldLabel)
        loginView.addSubview(surnameField)
        loginView.addSubview(emailFieldLabel)
        loginView.addSubview(emailField)
        loginView.addSubview(numberFieldLabel)
        loginView.addSubview(numberField)
        loginView.addSubview(passwordFieldLabel)
        loginView.addSubview(passwordField)
        loginView.addSubview(registerBtn)
        loginView.addSubview(loginLabel)
        loginView.addSubview(loginBtn)
    }
    
    func setupConstraints() {
        customBackground.snp.makeConstraints{ make in
            make.top.left.right.bottom.equalToSuperview()
        }
        loginView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(586)
            make.top.equalToSuperview().inset(160)
        }
        title.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(20)
        }
        nameFieldLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(57)
            make.top.equalTo(title.snp.bottom).offset(14)
        }
        nameField.snp.makeConstraints{ make in
            make.top.equalTo(nameFieldLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
        }
        surnameFieldLabel.snp.makeConstraints{ make in
            make.top.equalTo(nameField.snp.bottom).offset(13)
            make.left.equalToSuperview().inset(57)
        }
        surnameField.snp.makeConstraints{ make in
            make.top.equalTo(surnameFieldLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
        }
        emailFieldLabel.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(57)
            make.top.equalTo(surnameField.snp.bottom).offset(14)
        }
        emailField.snp.makeConstraints{ make in
            make.top.equalTo(emailFieldLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
        }
        numberFieldLabel.snp.makeConstraints{ make in
            make.top.equalTo(passwordField.snp.bottom).offset(24)
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
            make.top.equalTo(emailField.snp.bottom).offset(13)
        }
        passwordField.snp.makeConstraints{ make in
            make.top.equalTo(passwordFieldLabel.snp.bottom).offset(3)
            make.left.equalTo(passwordFieldLabel)
            make.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
        }
        registerBtn.snp.makeConstraints{ make in
            make.left.right.equalToSuperview().inset(57)
            make.height.equalTo(30)
            make.top.equalTo(numberField.snp.bottom).offset(86)
        }
        loginLabel.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(registerBtn.snp.bottom).offset(33)
        }
        loginBtn.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginLabel.snp.bottom).offset(5)
        }
    }
}
