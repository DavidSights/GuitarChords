//
//  Extensions.swift
//  GuitarChords
//
//  Created by David Seitz Jr on 10/20/16.
//  Copyright © 2016 David Seitz Jr. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {

    /// A convenience method for creating a UIColor instance with RGB values, including alpha.
    class func rgbColor(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {

        return UIColor(red: r/255.0,
                       green: g/255.0,
                       blue: b/255.0,
                       alpha: a)
    }

    /// A convenience method for creating a UIColor instance with RGB values.
    class func rgbColor(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {

        return UIColor.rgbColor(r: r,
                                g: g,
                                b: b,
                                a: 1)
    }
}

extension UIView {

    func roundCorners() {
        self.layer.cornerRadius = self.frame.height/3.5
    }
}
