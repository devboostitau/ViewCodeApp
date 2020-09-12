//
//  AppDelegate.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 10/09/20.
//  Copyright © 2020 DevBoost. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
//        let navigationController = UINavigationController()
//        navigationController.viewControllers = [WelcomeViewController()]
//        window?.rootViewController = navigationController
        
        window?.rootViewController = WelcomeViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

    


}

