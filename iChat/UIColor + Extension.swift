//
//  UIColor + Extension.swift
//  iChat
//
//  Created by Pavel Naumov on 19.10.2022.
//

import Foundation
import UIKit

extension UIColor {
    static func buttonRed() -> UIColor {
        return hexStringToUIColor(hex: "D0021B")
    }
    
    static func mainWhite() -> UIColor {
        return hexStringToUIColor(hex: "F7F8FD")
    }
    
    static func buttonBlack() -> UIColor {
        return hexStringToUIColor(hex: "333333")
    }
    
    static func textFieldLight() -> UIColor {
        return hexStringToUIColor(hex: "E6E6E6")
    }
}


func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
