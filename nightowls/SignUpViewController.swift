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
    var welcomeMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = .white
        view.backgroundColor = UIColor(red: 0.22, green: 0.28, blue: 0.40, alpha: 1.00)
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        
        userFirstName = UITextField()
        userFirstName.translatesAutoresizingMaskIntoConstraints = false
        userFirstName.placeholder = "First Name"
        userFirstName.borderStyle = .roundedRect
        userFirstName.textColor = .black
        view.addSubview(userFirstName)
        
        userLastName = UITextField()
        userLastName.translatesAutoresizingMaskIntoConstraints = false
        userLastName.placeholder = "Last Name"
        userLastName.borderStyle = .roundedRect
        userLastName.textColor = .black
        view.addSubview(userLastName)
        
        userEmail = UITextField()
        userEmail.translatesAutoresizingMaskIntoConstraints = false
        userEmail.placeholder = "Email"
        userEmail.borderStyle = .roundedRect
        userEmail.textColor = .black
        view.addSubview(userEmail)
        
        userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.placeholder = "User Name"
        userName.borderStyle = .roundedRect
        userName.textColor = .black
        view.addSubview(userName)
        
        userPassword = UITextField()
        userPassword.translatesAutoresizingMaskIntoConstraints = false
        userPassword.placeholder = "Password"
        userPassword.borderStyle = .roundedRect
        userPassword.textColor = .black
        view.addSubview(userPassword)
        
        signUpButton = UIButton()
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.layer.borderWidth = 3
        signUpButton.layer.cornerRadius = 15
        signUpButton.backgroundColor = .white
        //add target
        view.addSubview(signUpButton)
        
        welcomeMessage = UILabel()
        welcomeMessage.translatesAutoresizingMaskIntoConstraints = false
        welcomeMessage.text = "Welcome Night Owler!"
        welcomeMessage.numberOfLines = 2
        welcomeMessage.textAlignment = .center
        welcomeMessage.adjustsFontSizeToFitWidth = true
        welcomeMessage.textColor = .white
        welcomeMessage.font = UIFont(name: "Helvetica-Bold", size: 40)
        view.addSubview(welcomeMessage)
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            welcomeMessage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            welcomeMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeMessage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeMessage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            userFirstName.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor, constant: 100),
            userFirstName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userFirstName.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            userLastName.topAnchor.constraint(equalTo: userFirstName.bottomAnchor, constant: 50),
            userLastName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userLastName.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            userEmail.topAnchor.constraint(equalTo: userLastName.bottomAnchor, constant: 50),
            userEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userEmail.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: userEmail.bottomAnchor, constant: 50),
            userName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userName.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            userPassword.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 50),
            userPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userPassword.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: userPassword.bottomAnchor, constant: 50),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 150)
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
