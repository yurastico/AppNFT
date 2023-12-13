//
//  ViewController.swift
//  NFT
//
//  Created by Yuri Cunha on 14/10/23.
//



import UIKit

class LoginViewController: UIViewController {

    
    
    var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view = loginView
        loginView?.delegate = self
        dismissKeyboard()
        loginView.configTextFieldsDelegate(delegate: self)
        
    }


}

extension LoginViewController: LoginViewProtocol {
    func tappedLoginButton() {
        
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
