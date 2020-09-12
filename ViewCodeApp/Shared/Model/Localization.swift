//
//  Localization.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 11/09/20.
//  Copyright © 2020 DevBoost. All rights reserved.
//

import Foundation

enum Localization {
    static let welcomeText = "WELCOME_TEXT".localized
    static let mainText = "MAIN_TEXT".localized
    static let loginButtonText = "LOGIN_BUTTON_TEXT".localized
    static let signUpButtonText = "SIGNUP_BUTTON_TEXT".localized
    static let socialMediaText = "SOCIAL_MEDIA_TEXT".localized
    static let phoneText = "PHONE_TEXT".localized
}

extension String {
   var localized: String {
       return NSLocalizedString(self, comment: "")
   }
}
