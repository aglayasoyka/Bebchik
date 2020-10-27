//
//  main.swift
//  krinzh
//
//  Created by Student1 on 20.10.2020.
//  Copyright © 2020 Student1. All rights reserved.
//

import Foundation

let someCreature = Creature(name: "Stepa", age: 2, weight: 20, sex: .male)

someCreature.children.append(Creature(name: "Mika", age: 7, weight: 3, sex: .female))
someCreature.children.append(Creature(name: "Smetik", age: 7, weight: 3, sex: .female))

let anotherCreature = Creature(name: "Naruto", age: 33, weight: 68, sex:.male)
anotherCreature.children.append(Creature(name: "Boruto", age: 12, weight: 40, sex: .male))

let lastCreature = Creature(name: "Sakura", age: 33, weight: 53, sex: .female)
lastCreature.children.append(Creature(name: "Sarada", age: 12, weight: 35, sex: .female))


var allCreature:[Creature] = [someCreature, anotherCreature, lastCreature]

for creature in allCreature {
    
    creature.executeGenderRoles()
    
}

class Test {
    
    static var value = 0
    
    static func test() {
        
    }
    
    func test2() {
        
    }
}

