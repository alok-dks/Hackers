//
//  Theme.swift
//  Hackers
//
//  Created by Weiran Zhang on 14/12/2015.
//  Copyright © 2015 Glass Umbrella. All rights reserved.
//

import UIKit

struct OldTheme {
    static let purpleColour = UIColor(red: 101/255.0, green: 19/255.0, blue: 229/255.0, alpha: 1)
    static let backgroundPurpleColour = UIColor(red:0.879, green:0.816, blue:0.951, alpha:1)
    
    static func setupNavigationBar(_ navigationBar: UINavigationBar?) {
        navigationBar?.barTintColor = .white
        navigationBar?.tintColor = purpleColour
        navigationBar?.setValue(true, forKey: "hidesShadow")
    }
}

struct AppTheme {
    var statusBarStyle: UIStatusBarStyle
    
    var barBackgroundColor: UIColor
    var barForegroundColor: UIColor
    var barStyle: UIBarStyle
    var backgroundColor: UIColor
    
    var titleTextColor: UIColor
    var textColor: UIColor
    var lightTextColor: UIColor
    
    var cellHighlightColor: UIColor
    var separatorColor: UIColor
}

extension AppTheme {
    static let light = AppTheme(
        statusBarStyle: .default,
        
        barBackgroundColor: .black,
        barForegroundColor: .white,
        barStyle: .default,
        backgroundColor: .white,
        
        titleTextColor: .black,
        textColor: UIColor(rgb: 0x555555),
        lightTextColor: UIColor(rgb: 0xAAAAAA),
        
        cellHighlightColor: UIColor(rgb: 0xF4D1F2),
        separatorColor: UIColor(rgb: 0xCACACA)
    )
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
