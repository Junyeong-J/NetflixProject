//
//  LoginViewController.swift
//  NetflixProject
//
//  Created by 전준영 on 5/16/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var codeTextField: UITextField!
    @IBOutlet var joinButton: UIButton!
    @IBOutlet var setSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .white
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        emailTextField.tintColor = .white
        emailTextField.textColor = .white
        emailTextField.keyboardType = .emailAddress
        emailTextField.textAlignment = .left
        emailTextField.borderStyle = .bezel
        emailTextField.backgroundColor = .darkGray
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        passwordTextField.tintColor = .white
        passwordTextField.textColor = .white
        passwordTextField.isSecureTextEntry = true
        passwordTextField.keyboardType = .default
        passwordTextField.textAlignment = .left
        passwordTextField.borderStyle = .bezel
        passwordTextField.backgroundColor = .darkGray
        
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        nicknameTextField.tintColor = .white
        nicknameTextField.textColor = .white
        nicknameTextField.keyboardType = .default
        nicknameTextField.textAlignment = .left
        nicknameTextField.borderStyle = .roundedRect
        nicknameTextField.backgroundColor = .darkGray
        
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        locationTextField.tintColor = .white
        locationTextField.textColor = .white
        locationTextField.keyboardType = .default
        locationTextField.textAlignment = .left
        locationTextField.borderStyle = .line
        locationTextField.backgroundColor = .darkGray
        
        codeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        codeTextField.tintColor = .white
        codeTextField.textColor = .white
        codeTextField.keyboardType = .numberPad
        codeTextField.textAlignment = .left
        codeTextField.borderStyle = .none
        codeTextField.backgroundColor = .darkGray
        
        
        joinButton.setTitle("회원가입", for: .normal)
        joinButton.setTitleColor(.black, for: .normal)
        joinButton.backgroundColor = .white
        
        setSwitch.setOn(true, animated: true)
        setSwitch.onTintColor = .red
        setSwitch.thumbTintColor = .gray
    }
    
    @IBAction func emailTextFieldReturnTapped(_ sender: UITextField) {
        print("버튼을 눌렸습니다.")
    }
    
    @IBAction func passwordTextFieldReturnTapped(_ sender: UITextField) {
        print("버튼을 눌렸습니다.")
    }
    
    @IBAction func joinButtonTapped(_ sender: UIButton) {
        
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        nicknameTextField.resignFirstResponder()
        locationTextField.resignFirstResponder()
        codeTextField.resignFirstResponder()
        
    }
    
}
