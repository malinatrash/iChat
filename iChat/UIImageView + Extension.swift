//
//  UIImageView + Extension.swift
//  iChat
//
//  Created by Pavel Naumov on 19.10.2022.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
