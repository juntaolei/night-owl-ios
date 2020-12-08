//
//  SignUpViewController.swift
//  nightowls
//
//  Created by James Cummings on 12/8/20.
//

import UIKit

class SignUpViewController: UIViewController {

    var userFirstName: UITextField!
    var userLastName: UITextField!
    var userEmail: UITextField!
    var userName: UITextField!
    var userPassword: UITextField!
    var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        
        userFirstName = UITextField()
        userFirstName.translatesAutoresizingMaskIntoConstraints = false
        userFirstName.placeholder = "First Name"
        userFirstName.textColor = .black
        view.addSubview(userFirstName)
        
        userLastName = UITextField()
        userLastName.translatesAutoresizingMaskIntoConstraints = false
        userLastName.placeholder = "Last Name"
        userLastName.textColor = .black
        view.addSubview(userLastName)
        
        userEmail = UITextField()
        userEmail.translatesAutoresizingMaskIntoConstraints = false
        userEmail.placeholder = "Email"
        userEmail.textColor = .black
        view.addSubview(userEmail)
        
        userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.placeholder = "User Name"
        userName.textColor = .black
        view.addSubview(userName)
        
        userPassword = UITextField()
        userPassword.translatesAutoresizingMaskIntoConstraints = false
        userPassword.placeholder = "Password"
        userPassword.textColor = .black
        view.addSubview(userPassword)
        
        signUpButton = UIButton()
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        //add target
        view.addSubview(signUpButton)
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            userFirstName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            userFirstName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            userLastName.topAnchor.constraint(equalTo: userFirstName.bottomAnchor, constant: 50),
            userLastName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            userEmail.topAnchor.constraint(equalTo: userLastName.bottomAnchor, constant: 50),
            userEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: userEmail.bottomAnchor, constant: 50),
            userName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            userPassword.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 50),
            userPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: userPassword.bottomAnchor, constant: 50),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
