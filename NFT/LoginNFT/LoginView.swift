//
//  LoginView.swift
//  NFT
//
//  Created by Yuri Cunha on 14/10/23.
//

import UIKit

protocol LoginViewProtocol: AnyObject {
    func tappedLoginButton()
}

class LoginView: UIView {
    
    weak var delegate: LoginViewProtocol?
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BGLogin")
        return image
        
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BFLogin")
        image.contentMode = .scaleAspectFit
        return image
        
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "BF NFT"
        return label
    }()
    
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        label.text = " O marketplace de NFTs do yurastico"
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let  textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.attributedPlaceholder = NSAttributedString(string: "Digite o seu login.",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4 )])
        textField.textColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.white.cgColor
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let  textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.attributedPlaceholder = NSAttributedString(string: "Digite sua senha.",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4 )])
        textField.textColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.white.cgColor
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    
    lazy var recoverPasswordButton: UIButton = {
        let uiButton = UIButton(type: .system)
        uiButton.translatesAutoresizingMaskIntoConstraints = false
        uiButton.setTitle("Recuperar senha?", for: .normal)
        uiButton.setTitleColor(UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha:1.0 ), for: .normal)
        uiButton.addTarget(self, action: #selector(tappedRecoverPasswordButton), for: .touchUpInside)
        return uiButton
        
    }()
    
    @objc func  tappedRecoverPasswordButton(_ sender: UIButton) {
        self.delegate?.tappedLoginButton()
    }
    
    lazy var subLoginImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "gradient3")
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.contentMode = .scaleToFill
        return image
        
    }()
    
    lazy var loginButton: UIButton = {
        let uiButton = UIButton(type: .system)
        uiButton.translatesAutoresizingMaskIntoConstraints = false
        uiButton.setTitle("Entrar" , for: .normal)
        uiButton.setTitleColor(.white , for: .normal)
        uiButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        uiButton.clipsToBounds = true
        uiButton.layer.cornerRadius = 8
        uiButton.titleLabel?.textAlignment = .center
        uiButton.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return uiButton
        
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var signInMetaMaskView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1).cgColor
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var signInMetaMaskImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        return image
        
    }()
    
    lazy var signInMetaMaskLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Entrar com a Metamask"
        return label
    }()
    
    
    
    @objc func  tappedLoginButton(_ sender: UIButton) {
        print("mamab")
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElement()
        configConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElement() {
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(subLoginImageView)
        addSubview(loginButton)
        addSubview(lineView)
        addSubview(signInMetaMaskView)
        signInMetaMaskView.addSubview(signInMetaMaskImageView)
        signInMetaMaskView.addSubview(signInMetaMaskLabel)
        
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor ),
            
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 55), // coloca no topo da safe area com um espacing de 55
            logoImageView.heightAnchor.constraint(equalToConstant: 108), // tamanho da imagem
            logoImageView.widthAnchor.constraint(equalToConstant: 108),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor), // centraliza
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,constant: 16),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 4),
            // TODO estudar a diferença dessas duas abordagensr
            //descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            
            
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 11),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20 ),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 39 ),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 11),
            passwordTextField.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor ),
            passwordTextField.heightAnchor.constraint(equalTo: loginTextField.heightAnchor),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 9),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            
            subLoginImageView.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor, constant: 36),
            subLoginImageView.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            subLoginImageView.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            subLoginImageView.heightAnchor.constraint(equalToConstant: 43),
            
            loginButton.topAnchor.constraint(equalTo: subLoginImageView.topAnchor),
            loginButton.trailingAnchor.constraint(equalTo: subLoginImageView.trailingAnchor),
            loginButton.leadingAnchor.constraint(equalTo: subLoginImageView.leadingAnchor),
            loginButton.heightAnchor.constraint(equalTo: subLoginImageView.heightAnchor),
            
            lineView.topAnchor.constraint(equalTo: subLoginImageView.bottomAnchor ,constant: 48),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 64),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -64 ),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            signInMetaMaskView.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 48),
            signInMetaMaskView.leadingAnchor.constraint(equalTo: subLoginImageView.leadingAnchor),
            signInMetaMaskView.trailingAnchor.constraint(equalTo: subLoginImageView.trailingAnchor),
            signInMetaMaskView.heightAnchor.constraint(equalToConstant: 41),
            
            
            signInMetaMaskImageView.leadingAnchor.constraint(equalTo: signInMetaMaskView.leadingAnchor,constant: 53),
            signInMetaMaskImageView.centerYAnchor.constraint(equalTo: signInMetaMaskView.centerYAnchor),
            signInMetaMaskImageView.heightAnchor.constraint(equalToConstant: 20),
            signInMetaMaskImageView.widthAnchor.constraint(equalToConstant: 20),
            
            signInMetaMaskLabel.leadingAnchor.constraint(equalTo: signInMetaMaskImageView.trailingAnchor,constant: 17),
            signInMetaMaskLabel.centerYAnchor.constraint(equalTo: signInMetaMaskView.centerYAnchor)
            
            
        ])
    }
    
}
