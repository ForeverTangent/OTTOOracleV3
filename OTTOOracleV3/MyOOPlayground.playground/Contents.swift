import UIKit

var greeting = "Hello, playground"

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


print(FATE_EVENT.allCases.map({ event in
    event.rawValue
}))
