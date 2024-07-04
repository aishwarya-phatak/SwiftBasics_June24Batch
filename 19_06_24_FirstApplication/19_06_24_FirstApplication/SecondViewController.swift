//
//  SecondViewController.swift
//  19_06_24_FirstApplication
//
//  Created by Vishal Jagtap on 04/07/24.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load of Second View Controller Called")
        initViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear of Second View Controller Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View Did Appear of Second View Controller Called")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will DisAppear of Second View Controller Called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did DisAppear of Second View Controller Called")
    }
    
    func initViews(){
        let rect = CGRect(x: 60, y: 100, width: 300, height: 50)
        let welcomeLabel1 = UILabel(frame: rect)
        welcomeLabel1.text = "iOS Batch"
        welcomeLabel1.backgroundColor = .orange
        
        self.view.addSubview(welcomeLabel1)
    }
}
