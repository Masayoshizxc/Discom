//
//  ForTextField.swift
//  Makers
//
//  Created by Adilet on 14/7/23.
//

import UIKit

class ForTextField: UITextField, UITextFieldDelegate {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 1
        layer.cornerRadius = 5
        font = .systemFont(ofSize: 10)
//        font = R.font.manropeMedium(size: 14)
//        layer.borderColor = R.color.borderGreyish()?.cgColor
        autocorrectionType = .no
        autocapitalizationType = .none
        delegate = self
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = R.color.border()?.cgColor
        textField.layer.borderWidth = 1
        textField.attributedPlaceholder = NSAttributedString(string: "")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
//        textField.layer.borderColor = R.color.borderGreyish()?.cgColor
        textField.layer.borderWidth = 1
    }
    
    
    
    let padding = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)

        override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

        override open func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
}
