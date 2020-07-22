
import Foundation

enum Weapon: String {
    case axe = "Axe"
    case sword = "Sword"
    case mace = "Mace"
    case maul = "Maul"
    case spear = "Spear"
    case hallebard = "Hallebard"
    case wand = "Wand"
    case bow = "Bow"
    case magicBlade = "Magic blade"
    
    func weaponDamage() -> Int {
        switch self {
        case .axe: return 60
        case .sword: return 12
        case .mace: return 12
        case .maul: return 20
        case .spear: return 20
        case .hallebard: return 30
        case .wand: return 14
        case .bow: return 16
        case .magicBlade: return 30
        }
    }
}
