//
//  Direction.swift
//  Pods-ViewAnimator_Example
//
//  Created by Marcos Griselli on 10/5/17.
//

import Foundation

/// Direction of the animation used in AnimationType.from.
public enum Direction: Int {

    case top
    case left
    case right
    case bottom
    
    /// Checks if the animation should go on the X or Y axis.
    var isVertical: Bool {
        switch self {
        case .top, .bottom:
            return true
        default:
            return false
        }
    }

    /// Random direction.
    static func random() -> Direction {
        let rawValue = Int(arc4random_uniform(4))
        return Direction(rawValue: rawValue)!
    }
}
