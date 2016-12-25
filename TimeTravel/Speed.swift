//
//  Speed.swift
//  TimeTravel
//
//  Created by Lloyd W. Sykes on 12/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Double {
    
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1_000
    case lightSpeed = 1_000_000
    
    var isTravelingAtLightSpeed: Bool { return self == .lightSpeed ? true : false }
    
    init(spaceSpeed: Double) {
        switch spaceSpeed {
        case 0:
            self = .none
        case 1...149:
            self = .slow
        case 150...999:
            self = .medium
        case 1_000...999_999:
            self = .fast
        default :
            self = .lightSpeed
        }
    }
    
    func isFaster(than speed: Speed) -> Bool {
        return self.rawValue > speed.rawValue ? true : false
    }
}
