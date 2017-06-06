//
//  UIColor+OttawamHealth.swift
//  TestPod
//
//  Created by Guillian Balisi on 2017-06-06.
//  Copyright © 2017 Guillian Balisi. All rights reserved.
//

//
//  UIColor+OttawamHealth.swift
//  TestPod
//
//  Created by Guillian Balisi on 2017-06-06.
//  Copyright © 2017 Guillian Balisi. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorFromRGB(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor(red: r/255.0,
                       green: g/255.0,
                       blue: b/255.0,
                       alpha: a)
    }
    
    class func colorFromRGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255.0,
                       green: g/255.0,
                       blue: b/255.0,
                       alpha: 1.0)
    }
    
    class func colorFromHex(hex: UInt) -> UIColor {
        return UIColor(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
                       green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
                       blue: CGFloat(hex & 0x0000FF) / 255.0,
                       alpha: CGFloat(1.0))
    }
    
    class func colorFromHexString(hex: String) -> UIColor {
        // Remove any hashes from the String
        let noHashString = hex.replacingOccurrences(of: "#", with: "")
        
        // Scan for the hex number
        let scanner = Scanner(string: noHashString)
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        return colorFromHex(hex: UInt(color))
    }
    
    static func iOSBlueColor() -> UIColor {
        return colorFromRGB(r: 0, g: 122, b: 255)
    }
    
    static func greyColor() -> UIColor {
        return colorFromRGB(r: 136, g: 136, b: 136)
    }
    
    static func lightGreyColor() -> UIColor {
        return colorFromRGB(r: 230, g: 230, b: 230)
    }
    
    static func darkGreyColor() -> UIColor {
        return colorFromRGB(r: 80, g: 80, b: 80)
    }
    
}
