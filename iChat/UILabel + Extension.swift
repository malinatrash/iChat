//
//  UILabel + Extension.swift
//  iChat
//
//  Created by Pavel Naumov on 19.10.2022.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
        self.font = font
    }
}
