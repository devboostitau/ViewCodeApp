//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 10/09/20.
//  Copyright © 2020 DevBoost. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, HasCodeView {
    
    typealias CustomView = WelcomeView
    
    // MARK: - Properties
    /*
    //Técnica 2: Propriedade computada
    var customView: WelcomeView {
        return view as! WelcomeView
    }
    */
    // MARK: - Super Methods
    override func loadView() {
        view = WelcomeView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        customView.animate()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - Methods
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let userInfo = notification.userInfo,
            let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}

        let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        let animation = UIView.AnimationOptions(rawValue: userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt)
        
        UIView.animate(withDuration: duration, delay: 0.0, options: animation, animations: {
            self.customView.scrollView.contentInset.bottom = keyboardFrame.size.height - self.view.safeAreaInsets.bottom
            self.customView.scrollView.verticalScrollIndicatorInsets.bottom = keyboardFrame.size.height - self.view.safeAreaInsets.bottom
        }) { (success) in
            print("Teclado terminou de aparecer")
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        customView.scrollView.contentInset.bottom = 0
        customView.scrollView.verticalScrollIndicatorInsets.bottom = 0
    }

}

extension WelcomeViewController: WelcomeViewDelegate {
    func loginButtonTapped(withPhone: String) {
        print("Abrindo tela de Login com o telefone", withPhone)
        
        let newViewController = WelcomeViewController()
        show(newViewController, sender: nil)
    }
    
    func signUpButtonTapped() {
        
    }
    
    func facebookButtonTapped() {
        
    }
    
    func googleButtonTapped() {
        
    }
}
