//
//  FateChart.swift
//  OTTOOracleV3
//
//  Created by Stanley Rosenbaum on 1/12/24.
//

import Foundation
import SwiftCSV

enum FATES: Int, Codable, CaseIterable {
    case CERTAIN = 0
    case NEARLY_CERTAIN = 1
    case VERY_LIKELY = 2
    case LIKEKLY = 3
    case FIFTY_FIFTY = 4
    case UNLIKELY = 5
    case VERYUNLIKELY = 6
    case NEARLY_IMPOSSIBLE = 7
    case IMPOSSIBLE = 8
}

enum FATE_EVENT: String, Codable, CaseIterable  {
    case RemoteEvent
    case AmbiguousEvent
    case NewNPC
    case NPCAction
    case NPCNegative
    case NPCPositive
    case MoveTowardAThread
    case MoveAwayFromAThread
    case CloseAThread
    case PCNegative
    case PCPositive
    case CurrentContext
    
    func getIndex() -> Int {
        switch self {
        case .RemoteEvent: return 0
        case .AmbiguousEvent: return 1
        case .NewNPC: return 2
        case .NPCAction: return 3
        case .NPCNegative: return 4
        case .NPCPositive: return 5
        case .MoveTowardAThread: return 6
        case .MoveAwayFromAThread: return 7
        case .CloseAThread: return 8
        case .PCNegative: return 9
        case .PCPositive: return 10
        case .CurrentContext: return 11
        }
    }
}


enum FCMeaning: String, Codable, CaseIterable {
    case ACTION_1
    case ACTION_2
    case DESCRIPTIONS_1
    case DESCRIPTIONS_2
    case ADVENTURE_TONE
    case ALIEN_SPECIES
    case ANIMAL_ACTIONS
    case ARMY_DESCRIPTORS
    case CAVERN_DESCRIPTORS
    case CHARACTERS
    case CHARACTERS_ACTIONS_COMBAT
    case CHARACTERS_ACTIONS_GENERAL
    case CHARACTERS_APPEARANCE
    case CHARACTERS_BACKGROUND
    case CHARACTERS_CONVERSATIONS
    case CHARACTERS_DESCRIPTORS
    case CHARACTERS_IDENTITY
    case CHARACTERS_MOTIVATION
    case CHARACTERS_PERSONALITY
    case CHARACTERS_SKILLS
    case CHARACTERS_TRAITS_FLAWS
    case CITY_DESCRIPTORS
    case CIVILZATION_DESCRIPTORS
    case CREATURE_ABILITIES
    case CREATURE_DESCRIPTORS
    case CRYPTIC_MESSAGE
    case CURSES
    case DOMICILE_DESCRIPTORS
    case DUNGEON_DESCRIPTORS
    case DUNGEON_TRAPS
    case FOREST_DESCRIPTORS
    case GODS
    case LEGENDS
    case LOCATIONS
    case MAGIC_ITEM_DESCRIPTORS
    case MUTATION_DESCRIPTORS
    case NAMES
    case NOBLE_HOUSE
    case OBJECTS
    case PLOT_TWISTS
    case POWERS
    case SCAVENGING_RESULTS
    case SMELLS
    case SOUNDS
    case SPELL_EFFECTS
    case STARSHIP_DESCRIPTORS
    case TERRAIN_DESCRIPTORS
    case UNDEAD_DESCRIPTORS
    case VISION_DREAMS
}

class FateChart {
    
}



