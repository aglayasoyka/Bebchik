//
//  name.swift
//  krinzh
//
//  Created by Student1 on 22.10.2020.
//  Copyright © 2020 Student1. All rights reserved.
//

import Foundation

extension String {
    
    static func randomName(lentgh: Int) -> String {
        let alphabet = "abcdfghijklmnopqrstuvwxyz"
        return String((0..<lentgh).map{ _ in alphabet.randomElement()! })
    }
}
