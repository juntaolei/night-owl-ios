//
//  ViewController.swift
//  nightowls
//
//  Created by Elvis Marcelo on 12/6/20.
//

import UIKit

class ViewController: UIViewController {

    var owlImage: UIImageView!
    var userImageIcon: UIImageView!
    var passwordImageIcon: UIImageView!
    
    var userNameInput: UITextField!
    var userPasswordInput: UITextField!
    
    var signInButton: UIButton!
    var signUpButton: UIButton!
    

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.22, green: 0.28, blue: 0.40, alpha: 1.00)
        
        setupViews()
        setupConstraints()
    
        
    }

    func setupViews() {
        
        userImageIcon = UIImageView()
        userImageIcon.image = UIImage(named: "UNICON")
        
        
        userNameInput = UITextField()
        userNameInput.translatesAutoresizingMaskIntoConstraints = false
        userNameInput.borderStyle = .roundedRect
        userNameInput.placeholder = "User Name"
        userNameInput.textColor = .black
        view.addSubview(userNameInput)
        
        userPasswordInput = UITextField()
        userPasswordInput.translatesAutoresizingMaskIntoConstraints = false
        userPasswordInput.borderStyle = .roundedRect
        userPasswordInput.placeholder = "Password"
        userPasswordInput.textColor = .black
        userPasswordInput.isSecureTextEntry = true
        view.addSubview(userPasswordInput)
        
        signInButton = UIButton()
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = .white
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.layer.borderWidth = 3
        signInButton.layer.cornerRadius = 15
        signInButton.addTarget(self, action: #selector(partyLaunch), for: .touchUpInside)
        view.addSubview(signInButton)
        
        signUpButton = UIButton()
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(.white, for: .normal)
        signUpButton.addTarget(self, action: #selector(userSignUpFlow), for: .touchUpInside)
        view.addSubview(signUpButton)
        
        owlImage = UIImageView()
        owlImage.translatesAutoresizingMaskIntoConstraints = false
        owlImage.image = UIImage(named: "Owl")
        owlImage.contentMode = .scaleAspectFit
        owlImage.layer.borderColor = UIColor.black.cgColor
        owlImage.layer.borderWidth = 5
        owlImage.layer.cornerRadius = 50
        owlImage.clipsToBounds = true
        owlImage.layer.masksToBounds = true
        view.addSubview(owlImage)
        

    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            owlImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            owlImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            owlImage.heightAnchor.constraint(equalToConstant: 200),
            owlImage.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            userNameInput.topAnchor.constraint(equalTo: owlImage.bottomAnchor, constant: 75),
            userNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameInput.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            userPasswordInput.topAnchor.constraint(equalTo: userNameInput.bottomAnchor, constant: 30),
            userPasswordInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userPasswordInput.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: userPasswordInput.bottomAnchor, constant: 50),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 150),
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 15),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
    }
    
    @objc func userSignUpFlow() {
        let newViewController = SignUpViewController()
        //delegate
        present(newViewController, animated: true, completion: nil)
    }

    @objc func partyLaunch() {
        let newViewController = PartyViewController()
        navigationController?.pushViewController(newViewController, animated: true)
    }
}
