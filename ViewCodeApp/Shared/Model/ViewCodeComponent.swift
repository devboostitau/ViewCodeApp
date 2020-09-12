//
//  ViewCodeComponent.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 11/09/20.
//  Copyright © 2020 DevBoost. All rights reserved.
//

import UIKit

//https://www.swiftbysundell.com/articles/property-wrappers-in-swift/

@propertyWrapper
struct ViewCodeComponent<T: UIView> {
    var wrappedValue: T
    
    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        self.wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
