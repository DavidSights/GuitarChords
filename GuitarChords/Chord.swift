//
//  Chord.swift
//  GuitarChords
//
//  Created by David Seitz Jr on 10/12/16.
//  Copyright © 2016 David Seitz Jr. All rights reserved.
//

enum Chord: Int {

    case aMinor

    static let count: Int = {
        var max: Int = 0
        while let _ = Chord(rawValue: max) { max += 1 }
        return max
    }()

    /// - returns: The name of this chord.
    func name() -> String {

        switch self {

        case .aMinor:
            return "A Minor"
        }
    }

    /// - returns: The image file name of this chord.
    func image() -> String {

        switch self {

        case .aMinor:
            return "A Minor"
        }
    }

    /// - returns: The sound file name of this chord.
    func sound() -> String {

        switch self {
            
        case .aMinor:
            return "aMinor"
        }
    }
}
