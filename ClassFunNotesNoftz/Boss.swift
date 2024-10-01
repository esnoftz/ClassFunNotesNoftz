//
//  Boss.swift
//  ClassFunNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 9/30/24.
//



// Making an enum
// Making your own data type (like int, string, etc.) called Status
// Cases are the types that you could be
enum Status {
    case dead, enraged, dying, healthy, decapitated
}

// similar to interface in java
// just has a bunch of functions in it without code (more like abstract class tho)
// if implemented, you're forced to write code for all the functions in the protocol
protocol Death {
    func die()
}

import Foundation

// use colon to extend (adopting) a class and implement protocols
class Boss : Death {
    
    
    // Variables
    var health: Double
    var power: Int
    var name: String
    var image: String
    // makes blank array of Weapon objects
    var weapons = [Weapon]()
    var myStatus: Status
    
    // Initializer (constructor)
    init(health: Double, power: Int, name: String, image: String) {
        self.health = health
        self.power = power
        self.name = name
        self.image = image
        // sets value of myStatus using the enum
        myStatus = Status.healthy
    }
    
    // Default initializer
    init() {
        health = 100
        power = 2
        name = "John Doe"
        image = "Missing"
        // does the same thing as myStatus = Status.healthy (already knows the type of enum, so just assumes)
        myStatus = .healthy
    }
    
    // FUNCTIONS
    
    func addWeapon() {
        var blah = Weapon(damage: 2, durability: 0.7, type: "Mace")
        weapons.append(blah)
    }
    
    
    func hit() {
        health -= 2.0
    }
    
    // overload the hit function
    func hit(damage: Double) {
        health -= damage
    }
    
    func toString() -> String {
        return "health \(health)\npower \(power)"
    }
    
    // making a function with enums
    func lifeCheck() {
        
        switch myStatus {
        case .dead:
            print("dead")
        case .enraged:
            print("enraged")
        case .dying:
            print("dying")
        case .healthy:
            print("healthy")
        case .decapitated:
            print("decapitated")
        }
        
    }
    
    func die() {
        print("u ded gurl")
    }
    
    
    
}
