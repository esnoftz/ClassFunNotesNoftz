//
//  Boss.swift
//  ClassFunNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 9/30/24.
//

import Foundation

struct Boss {
    
    // Variables
    var health: Double
    var power: Int
    var name: String
    var image: String
    
    // Initializer (constructor)
    init(health: Double, power: Int, name: String, image: String) {
        self.health = health
        self.power = power
        self.name = name
        self.image = image
    }
    
    // Default initializer
    init() {
        health = 100
        power = 2
        name = "John Doe"
        image = "Missing"
    }
    
    // FUNCTIONS
    
    mutating func hit() {
        health -= 2.0
    }
    
    // overload the hit function
    mutating func hit(damage: Double) {
        health -= damage
    }
    
    func toString() -> String {
        return "health \(health)\npower \(power)"
    }
    
}
