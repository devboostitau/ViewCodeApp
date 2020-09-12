//
//  HasCodeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 11/09/20.
//  Copyright © 2020 DevBoost. All rights reserved.
//

import UIKit

protocol HasCodeView {
    associatedtype CustomView: UIView
}

extension HasCodeView where Self: UIViewController {
    var customView: CustomView {
        return view as! CustomView
    }
}
