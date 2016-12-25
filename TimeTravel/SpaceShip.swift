//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by Lloyd W. Sykes on 12/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    
    let name: String
    let speed: Speed = .none
    var currentPlanet: Planet
    var description: String { return "SpaceShip: \(self.name)\nSpeed: \(self.speed)\nLocation: \(self.currentPlanet)" }
    
    init(name: String, currentPlanet: Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool {
        return self.speed.isTravelingAtLightSpeed
    }
    
    func isFaster(than spaceShip: SpaceShip) -> Bool {
        return self.speed.rawValue > spaceShip.speed.rawValue
    }
    
    func travel(to planet: Planet) -> Bool {
        
        if self.currentPlanet == .mercury {
            return false
        } else if (planet == .venus && self.speed == .fast) || (planet == .earth && self.speed == .fast) || (planet == .mars && self.speed == .lightSpeed) || (planet == .jupiter && self.speed == .slow) || (planet == .saturn && self.speed == .medium) || (planet == .uranus && self.speed == .slow) || (planet == .neptune && self.speed == .fast) {
            self.currentPlanet = planet
            return true
        }
        self.currentPlanet = .mars
        return false
    }
    
}
