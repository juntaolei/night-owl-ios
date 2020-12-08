//
//  ViewController.swift
//  nightowls
//
//  Created by Elvis Marcelo on 12/6/20.
//

import UIKit

class ViewController: UIViewController {

    var userNameInput: UITextField!
    var userPassword: UITextField!
    
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
        
        userPassword = UITextField()
        userPassword.translatesAutoresizingMaskIntoConstraints = false
        userPassword.placeholder = "Password"
        userPassword.textColor = .black
        view.addSubview(userPassword)
        
        signInButton = UIButton()
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign In", for: .normal)
        //add target
        view.addSubview(signInButton)
        
        
        
        
    }
    
    func setupConstraints() {
        
        
    }

}
