//
//  inputs.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 18/05/24.
//

import Foundation
import UIKit

struct SignUpForm {
    let title: String
    let input: String
    let helpText: String
    let keyboardType: UIKeyboardType
    var value: String
    let isSecureField: Bool
    
    init(title: String, input: String, helpText: String, keyboardType: UIKeyboardType, value: String, isSecureField: Bool = false) {
        self.title = title
        self.input = input
        self.helpText = helpText
        self.keyboardType = keyboardType
        self.value = value
        self.isSecureField = isSecureField
    }
}
