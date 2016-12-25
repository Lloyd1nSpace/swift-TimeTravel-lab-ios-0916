//
//  Planet.swift
//  TimeTravel
//
//  Created by Lloyd W. Sykes on 12/24/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    var hasLife: Bool { return self == .earth || self == .mars ? true : false }
    var weather: Weather { switch self {
    case .mercury, .jupiter, .saturn:
        return .hot
    case .venus:
        return .superDuperHot
    case .earth:
        return .warm
    case .mars, .uranus, .neptune:
        return .cold
        }}
    
}
