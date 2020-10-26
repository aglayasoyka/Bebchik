//
//  Creature.swift
//  krinzh
//
//  Created by Student1 on 22.10.2020.
//  Copyright © 2020 Student1. All rights reserved.
//

import Foundation

enum Sex: CaseIterable {
    
    case male
    case female
}

class Creature: CustomStringConvertible {
    
    var description: String {
        return "\(name), \(age), \(weight),\(sex) "
    }
    
    let sex: Sex
    let name: String
    
    var age: Int
    var weight: Int
    var children = [Creature]()
    
    init(name: String, age: Int, weight: Int, sex: Sex) {
        self.name = name
        self.age = age
        self.weight = weight
        self.sex = sex
    }
    
    func executeGenderRoles() {
        switch sex {
            case .male:
            print("Go to war")
        case .female:
            let baby = self.baby()
            print(baby.description)
        }
    }
    
    func sayHello() {
        print("\(name):Hello")
        
        for Creature in children {
            print("\(Creature.name):Hello")
        }
    }
    
    private func baby() -> Creature {
        let randomAge = Int.random(in: 1..<70)
        let randomWeight = Int.random(in: 1..<70)
        let randomSex = Sex.allCases.randomElement()!
        let randomName = String.randomName(lentgh: Int.random(in: 1..<26))
        
        return Creature(name: randomName, age: randomAge, weight: randomWeight, sex: randomSex)
    }
}


