//
//  ViewController.swift
//  ClassFunNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var b = Boss()
        var b2 = Boss(health: 47.5, power: 4, name: "Bob", image: "bobImage")
        
        // don't need accessor methods
        print(b.health)
        // there is no automatic toString method
        print(b)
        // can make your own toString method
        print(b.toString())
        
        
        
        // creates a blank Boss array
        var bosses = [Boss]()
        // have new references that point at the same values (objects)
        bosses.append(b)
        bosses.append(b2)
        
        // for each loop printing out each boss's toString
        for boss in bosses {
            print(boss.toString())
        }
        
        // adding new reference to b (pointing at it, not a new object)
        var selectedBoss = bosses[0]
        selectedBoss.health = 10000
        
        for boss in bosses {
            print(boss.toString())
        }
        
        // classes: reference data types
        // structs: value data types (get new object when you pass something)
        
        // when Boss class is changed to a struct, changing the health of selected boss doesn't change the health of b
        // when putting object into array, a NEW object is created, NOT a new reference (brand new box, not just pointing)
        
        
        
        
        
        
        
        
    }


}

