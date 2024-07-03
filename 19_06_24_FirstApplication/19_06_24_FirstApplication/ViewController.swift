//
//  ViewController.swift
//  19_06_24_FirstApplication
//
//  Created by Vishal Jagtap on 03/07/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rectForLabel = CGRect(x: 60, y: 100, width: 300, height: 50)
        var welcomeLabel = UILabel(frame: rectForLabel)
        welcomeLabel.text = "Welcome to iOS!"
        welcomeLabel.textColor = .red
        welcomeLabel.textAlignment = .center
        welcomeLabel.backgroundColor = .lightGray
        
        self.view.addSubview(welcomeLabel)
        
        var rectForEditText = CGRect(x: 60, y: 170, width: 300, height: 50)
        var userNameTextView = UITextView(frame: rectForEditText)
        userNameTextView.backgroundColor = .orange
        
        self.view.addSubview(userNameTextView)
        
        var rectForEditText2 = CGRect(x: 60, y: 240, width: 300, height: 50)
        var passwordTextView = UITextView(frame: rectForEditText2)
        passwordTextView.backgroundColor = .orange
        
        self.view.addSubview(passwordTextView)
        
        var rectForBtn = CGRect(x: 60, y: 310, width: 300, height: 50)
        var btnLogin = UIButton(frame: rectForBtn)
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.backgroundColor = .lightGray
        btnLogin.setTitleColor(.brown, for: .normal)
        
        self.view.addSubview(btnLogin)
    }
}
