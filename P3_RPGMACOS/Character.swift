

import Foundation

class Character {
    var characterName: String
    var characterLife: Int
    var characterWeapon: Weapon
    init(characterName: String, characterLife: Int, characterWeapon: Weapon) {
        self.characterName = characterName
        self.characterLife = characterLife
        self.characterWeapon = characterWeapon
    }
}


var player1Character1 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe)
var player1Character2 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe)
var player1Character3 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe)


var player2Character1 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe)
var player2Character2 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe)
var player2Character3 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe)

var player1Characters = [Character]()
var player2Characters = [Character]()


var selectedAttacker = Character(characterName: "", characterLife: 0, characterWeapon: Weapon.axe)
var selectedDefender = Character(characterName: "", characterLife: 0, characterWeapon: Weapon.axe)


func character1Creation() {
    print("Choose your first character name...")
    if let character1Name = readLine() {
        if player1.numberOfCharacter == 0 {
        player1Character1.characterName = character1Name
        player1.numberOfCharacter += 1
            print("Your first character name is \(character1Name)")
            player1Characters.append(player1Character1)
    }
        else {
            player2Character1.characterName = character1Name
            player2.numberOfCharacter += 1
            print("Your first character name is \(character1Name)")
            player2Characters.append(player2Character1)
        }
    }
    print("Choose his weapon:"
        + "\r1. Axe"
        + "\r2. Sword"
        + "\r3. Mace")
    if let character1Weapon = readLine() {
        switch character1Weapon {
        case "1": print("You choosed Axe")
        player1Character1.characterWeapon = Weapon.axe
        case "2": print("You choosed Sword")
        player1Character1.characterWeapon = Weapon.sword
        case "3": print("You choosed Mace")
        player1Character1.characterWeapon = Weapon.mace
        default: print("A choice must be done !")
            character1Creation()
        }
    }
}

