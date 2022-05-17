//
//  BreadFactory.swift
//  FactoryMethodImplementation
//
//  Created by Gabriel Taques on 17/05/22.
//

import Foundation

protocol BreadFactory {
    func createBread() -> Bread
}


class BriocheFactory: BreadFactory {
    func createBread() -> Bread {
        return BriocheBread()
    }
}

class CampagneFactory: BreadFactory {
    func createBread() -> Bread {
        return CampagneBread()
    }
}

class CroissantFactory: BreadFactory {
    func createBread() -> Bread {
        return CroissantBread()
    }
}
