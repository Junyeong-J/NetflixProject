//
//  LoginViewController.swift
//  NetflixProject
//
//  Created by 전준영 on 5/16/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var textFieldLists: [UITextField]!
    
    @IBOutlet var joinButton: UIButton!
    @IBOutlet var setSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .white
        
        textFieldUI(textField: textFieldLists[0], placeholderText: "이메일 주소 또는 전화번호", keyBoardType: .emailAddress)
        textFieldUI(textField: textFieldLists[1], placeholderText: "비밀번호", keyBoardType: .default)
        textFieldUI(textField: textFieldLists[2], placeholderText: "닉네임", keyBoardType: .default)
        textFieldUI(textField: textFieldLists[3], placeholderText: "위치", keyBoardType: .default)
        textFieldUI(textField: textFieldLists[4], placeholderText: "추천 코드 입력", keyBoardType: .numberPad)

        joinButton.setTitle("회원가입", for: .normal)
        joinButton.setTitleColor(.black, for: .normal)
        joinButton.backgroundColor = .white
        
        setSwitch.setOn(true, animated: true)
        setSwitch.onTintColor = .red
        setSwitch.thumbTintColor = .gray
    }
    
    func textFieldUI(textField: UITextField, placeholderText: String, keyBoardType: UIKeyboardType) {
        
        textField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        textField.tintColor = .white
        textField.textColor = .white
        textField.keyboardType = keyBoardType
        textField.textAlignment = .left
        textField.borderStyle = .none
        textField.backgroundColor = .darkGray
        
    }
    
    @IBAction func emailTextFieldReturnTapped(_ sender: UITextField) {
        print("버튼을 눌렸습니다.")
    }
    
    @IBAction func passwordTextFieldReturnTapped(_ sender: UITextField) {
        print("버튼을 눌렸습니다.")
    }
    
    @IBAction func joinButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
    }
    
}
