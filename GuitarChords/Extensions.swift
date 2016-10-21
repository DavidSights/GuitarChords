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

    class func color(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}

extension UIView {

    func roundCorners() {
        self.layer.cornerRadius = self.frame.height/3.5
    }
}
