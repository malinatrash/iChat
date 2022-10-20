//
//  SegmentedControl + Extension.swift
//  iChat
//
//  Created by Pavel Naumov on 20.10.2022.
//

import Foundation
import UIKit

extension UISegmentedControl {
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
