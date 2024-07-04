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
        print("View Did Load of First View Controller Called")
        initViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear FVC")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear FVC ")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear FVC")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear FVC")
    }
    
    func initViews(){
        let rectForLabel = CGRect(x: 60, y: 100, width: 300, height: 50)
        let welcomeLabel = UILabel(frame: rectForLabel)
        welcomeLabel.text = "Welcome to iOS!"
        welcomeLabel.textColor = .red
        welcomeLabel.textAlignment = .center
        welcomeLabel.backgroundColor = .lightGray
        
        self.view.addSubview(welcomeLabel)
        
        let rectForEditText = CGRect(x: 60, y: 170, width: 300, height: 50)
        let userNameTextView = UITextView(frame: rectForEditText)
        userNameTextView.backgroundColor = .orange
        
        self.view.addSubview(userNameTextView)
        
        let rectForEditText2 = CGRect(x: 60, y: 240, width: 300, height: 50)
        let passwordTextView = UITextView(frame: rectForEditText2)
        passwordTextView.backgroundColor = .orange
        
        self.view.addSubview(passwordTextView)
        
        let rectForBtn = CGRect(x: 60, y: 310, width: 300, height: 50)
        let btnLogin = UIButton(frame: rectForBtn)
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.backgroundColor = .lightGray
        btnLogin.setTitleColor(.brown, for: .normal)
        
        btnLogin.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        
        self.view.addSubview(btnLogin)
    }
    
    @objc func btnClick(){
        print("Btn Login clicked")
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
