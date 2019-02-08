//
//  BundleExtensions.swift
//  Droar
//
//  Created by Nathan Jangula on 10/11/17.
//

import Foundation

internal extension Bundle {
    static var podBundle: Bundle {
        get {
            let frameworkBundle = Bundle(for: Droar.self)
            let bundlePath = frameworkBundle.path(forResource: "Droar", ofType: "bundle")
            return Bundle(path: bundlePath!)!
        }
    }
}
