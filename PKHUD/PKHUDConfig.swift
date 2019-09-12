//
//  PKHUDConfig.swift
//  PKHUD
//
//  Created by Greg on 07/09/2018.
//  Copyright © 2018 NSExceptional. All rights reserved.
//

import UIKit

public struct HUDConfig {
    
    public static var titleLabelFont = UIFont.boldSystemFont(ofSize: 17.0)
    public static var subtitleLabelFont = UIFont.boldSystemFont(ofSize: 14.0)
    public static var mainColor = UIColor.textColor
    public static var subtitleColor = UIColor.subtitleTextColor
}


private extension UIColor {
    class var textColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor.label.withAlphaComponent(0.85)
        } else {
            return UIColor.black.withAlphaComponent(0.85)
        }
    }
    
    class var subtitleTextColor: UIColor {
        if #available(iOS 13.0, *) {
            return UIColor.label.withAlphaComponent(0.70)
        } else {
            return UIColor.black.withAlphaComponent(0.70)
        }
    }
}

