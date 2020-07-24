
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
        case .axe: return 12
        case .sword: return 12
        case .mace: return 12
        case .maul: return 20
        case .spear: return 20
        case .hallebard: return 22
        case .wand: return 14
        case .bow: return 16
        case .magicBlade: return 26
        }
    }
}

let lootableItems = [Weapon.maul, Weapon.spear, Weapon.hallebard, Weapon.wand, Weapon.bow, Weapon.magicBlade]



func chest() {
    let rollDice = [1, 2, 3]
    let diceResult = rollDice.randomElement()!
    
    if diceResult == 2 {
        selectedAttacker.characterWeapon = lootableItems.randomElement()!
        print("\(selectedAttacker.characterName) opened a chest, he found \(selectedAttacker.characterWeapon.rawValue)!")
    }
    else if selectedAttacker.characterName == player1Character1.characterName {
        player1Character1.characterWeapon = selectedAttacker.characterWeapon
    }
    else if selectedAttacker.characterName == player1Character2.characterName {
        player1Character2.characterWeapon = selectedAttacker.characterWeapon
    }
    else if selectedAttacker.characterName == player1Character3.characterName {
        player1Character3.characterWeapon = selectedAttacker.characterWeapon
    }
        
    else if selectedAttacker.characterName == player2Character1.characterName {
        player2Character1.characterWeapon = selectedAttacker.characterWeapon
    }
    else if selectedAttacker.characterName == player2Character2.characterName {
        player2Character2.characterWeapon = selectedAttacker.characterWeapon
    }
    else if selectedAttacker.characterName == player2Character3.characterName {
        player2Character3.characterWeapon = selectedAttacker.characterWeapon
    }
}
