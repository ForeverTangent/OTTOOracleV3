//
//  File.swift
//  
//
//  Created by Stanley Rosenbaum on 12/13/23.
//

import Foundation
import OSLog


enum RollResult {
    case success(Int)
    case failure(Bool)
}

enum RollType {
    case over
    case equalOver
    case equalUnder
    case under
 
    func compare(result: Int, to target: Int) -> Bool {
        switch self {
        case .over:
            return result > target ? true : false
        case .equalOver:
            return result >= target ? true : false
        case .equalUnder:
            return result <= target ? true : false
        case .under:
            return result < target ? true : false
        }
    }

}

enum DieType {
    case d4
    case d6
    case d8
    case d10
    case d12
    case d20
    case d100
    
    func getDie() -> Die {
        switch self {
        case .d4:
            return Die(maxPips: 4)
        case .d6:
            return Die(maxPips: 6)
        case .d8:
            return Die(maxPips: 8)
        case .d10:
            return Die(maxPips: 10)
        case .d12:
            return Die(maxPips: 12)
        case .d20:
            return Die(maxPips: 20)
        case .d100:
            return Die(maxPips: 100)
        }
    }
    
}


/**
A basic dice class.
*/
class Dice {
    
    init() {}
    
    /**
     Main roll function.
     
     - Parameter number: Int (number of Dice) of one type
     - Parameter dieType: DieType (die type being rolled)
     - Parameter modifier: Mod applied to dice roll.
     - Parameter targetValue: Value the Roll is aiming to beat. (0, this is ignored)
     - Parameter rollType: How the targetValue has to be beat (Ignored if target is 0)
     */
    static func roll(number: Int,
                     of dieType: DieType,
                     mod modifier: Int = 0,
                     for targetValue: Int = 0,
                     going rollType: RollType = .equalOver) -> RollResult {

        let dice = Array(
            repeating: dieType.getDie(),
            count: number)
        
        var total = dice.reduce(0) { $0 + $1.roll() }
        
        total += modifier
        
        guard targetValue != 0 else {
            return RollResult.success(total)
        }
        
        return .failure(false)
    }
    
    
    /**
     Convience method for just rolling 1 dice.
     
     - Parameter dieType: DieType (die type being rolled)
     - Parameter modifier: Mod applied to dice roll.
     - Parameter targetValue: Value the Roll is aiming to beat. (0, this is ignored)
     - Parameter rollType: How the targetValue has to be beat (Ignored if target is 0)
     */
    static func roll(dieType: DieType,
                     mod modifier: Int = 0,
                     for targetValue: Int = 0,
                     going rollType: RollType = .equalOver) -> RollResult {
        
        Dice.roll(number: 1, of: dieType, mod: modifier, for: targetValue, going: rollType )
        
    }
    

    

    
}
