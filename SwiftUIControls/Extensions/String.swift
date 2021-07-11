//
//  String.swift
//  SwiftUIControls
//
//  Created by Paulo Silva on 11/07/2021.
//

import Foundation

extension String {
    func mask(char: String = "•") -> String {
        var masked = ""
        for _ in self {
            masked += char
        }
        return masked
    }
}
