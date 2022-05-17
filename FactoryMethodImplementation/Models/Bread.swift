//
//  Bread.swift
//  FactoryMethodImplementation
//
//  Created by Gabriel Taques on 17/05/22.
//

import Foundation


protocol Bread {
    var weight: Double { get set }
    var price: Double { get set }
    
    func bake() -> String
    func updateWeight() -> String
    func updatePrice() -> String
}

extension Bread {
    func updateWeight() -> String {
        return "Weight: \(self.weight)"
    }
    func updatePrice() -> String {
        return "Price: \(self.price)"
    }
}

class BriocheBread: Bread {
    var weight: Double = 750.0
    
    var price: Double = 34.0
    
    func bake() -> String {
        return "Brioche Is Being Baked!"
    }
    
}

class CampagneBread: Bread {
    var weight: Double = 900.0
    
    var price: Double = 32.0
    
    func bake() -> String {
        return "Campagne Is Being Baked!"
    }
}

class CroissantBread: Bread {
    var weight: Double = 100.0
    
    var price: Double = 11.0
    
    func bake() -> String {
        return "Croissant Is Being Baked!"
    }
}
