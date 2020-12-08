//
//  ViewController.swift
//  nightowls
//
//  Created by Elvis Marcelo on 12/6/20.
//

import UIKit

class ViewController: UIViewController {

    var userNameInput: UITextField!
    var userPasswordInput: UITextField!
    
    var signInButton: UIButton!
    var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
        
    }

    func setupViews() {
        
        userNameInput = UITextField()
        userNameInput.translatesAutoresizingMaskIntoConstraints = false
        userNameInput.placeholder = "User Name"
        userNameInput.textColor = .black
        view.addSubview(userNameInput)
        
        userPasswordInput = UITextField()
        userPasswordInput.translatesAutoresizingMaskIntoConstraints = false
        userPasswordInput.placeholder = "Password"
        userPasswordInput.textColor = .black
        view.addSubview(userPasswordInput)
        
        signInButton = UIButton()
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.addTarget(self, action: #selector(partyLaunch), for: .touchUpInside)
        view.addSubview(signInButton)
        
        signUpButton = UIButton()
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.addTarget(self, action: #selector(userSignUpFlow), for: .touchUpInside)
        view.addSubview(signUpButton)
        

    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            userNameInput.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            userNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            userPasswordInput.topAnchor.constraint(equalTo: userNameInput.bottomAnchor, constant: 50),
            userPasswordInput.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: userPasswordInput.bottomAnchor, constant: 50),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 50),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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
