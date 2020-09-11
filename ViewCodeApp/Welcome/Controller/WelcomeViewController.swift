//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 10/09/20.
//  Copyright © 2020 DevBoost. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func loadView() {
        view = WelcomeView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome"
    }

}

extension WelcomeViewController: WelcomeViewDelegate {
    func loginButtonTapped() {
        
    }
    
    func signUpButtonTapped() {
        
    }
    
    func facebookButtonTapped() {
        
    }
    
    func googleButtonTapped() {
        
    }
}
