
import Foundation

class Character {
    var characterName: String
    var characterLife: Int
    var characterWeapon: Weapon
    var characterStatusName: String
    var characterMana: Int
    init(characterName: String, characterLife: Int, characterWeapon: Weapon, characterStatusName: String, characterMana: Int) {
        self.characterName = characterName
        self.characterLife = characterLife
        self.characterWeapon = characterWeapon
        self.characterStatusName = characterStatusName
        self.characterMana = characterMana
    }
}



let deadStatus = "is DEAD"

var player1Character1 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe, characterStatusName: "", characterMana: 50)
var player1Character2 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe, characterStatusName: "", characterMana: 50)
var player1Character3 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe, characterStatusName: "", characterMana: 50)


var player2Character1 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe, characterStatusName: "", characterMana: 50)
var player2Character2 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe, characterStatusName: "", characterMana: 50)
var player2Character3 = Character(characterName: "", characterLife: 100, characterWeapon: Weapon.axe, characterStatusName: "", characterMana: 50)

var player1Characters = [player1Character1, player1Character2, player1Character3]
var player2Characters = [player2Character1, player2Character2, player2Character3]
var allGameNames = [String]()

var selectedAttacker = Character(characterName: "", characterLife: 0, characterWeapon: Weapon.axe, characterStatusName:"", characterMana: 50)
var selectedDefender = Character(characterName: "", characterLife: 0, characterWeapon: Weapon.axe, characterStatusName:"", characterMana: 50)


func character1Creation() {
    print("Choose your first character name...")
    if let character1Name = readLine() {
        if allGameNames.contains(character1Name) {
                   print("This character name is allready taken, choose an other one")
                   character1Creation()
                   }
        else if player1.numberOfCharacter == 0 {
            player1Character1.characterName = character1Name
            player1Character1.characterStatusName = player1Character1.characterName
            player1.numberOfCharacter += 1
            print("Your first character name is \(character1Name)")
            player1Characters.append(player1Character1)
            allGameNames.append(character1Name)
        }
        else {
            player2Character1.characterName = character1Name
            player2Character1.characterStatusName = player2Character1.characterName
            player2.numberOfCharacter += 1
            print("Your first character name is \(character1Name)")
            player2Characters.append(player2Character1)
            allGameNames.append(character1Name)
        }
    }
    print("Choose his weapon:"
        + "\r1. Axe"
        + "\r2. Sword"
        + "\r3. Mace")
    if let character1Weapon = readLine() {
        switch character1Weapon {
        case "1": print("You choosed Axe")
        if player2.numberOfCharacter == 0 {
            player1Character1.characterWeapon = Weapon.axe
        }
        else {
            player2Character1.characterWeapon = Weapon.axe
            }
        case "2": print("You choosed Sword")
        if player2.numberOfCharacter == 0 {
            player1Character1.characterWeapon = Weapon.sword
        }
        else {
            player2Character1.characterWeapon = Weapon.sword
            }
        case "3": print("You choosed Mace")
        if player2.numberOfCharacter == 0 {
            player1Character1.characterWeapon = Weapon.mace
        }
        else {
            player2Character1.characterWeapon = Weapon.mace
            }
        default: print("A choice must be done, we've choosed axe for you !")
        if player2.numberOfCharacter == 0 {
            player1Character1.characterWeapon = Weapon.axe
        }
        else {
            player2Character1.characterWeapon = Weapon.axe
            }
            
        }
    }
}


func character2Creation() {
    print("Choose your second character name...")
    if let character2Name = readLine() {
        if allGameNames.contains(character2Name) {
            print("This character name is allready taken, choose an other one")
            print(allGameNames.contains(character2Name))
            character2Creation()
            }
        else if player1.numberOfCharacter == 1 {
            player1Character2.characterName = character2Name
            player1Character2.characterStatusName = player1Character2.characterName
            player1.numberOfCharacter += 1
            print("Your second character name is \(character2Name)")
            player1Characters.append(player1Character2)
            allGameNames.append(character2Name)
        }
        else {
            player2Character2.characterName = character2Name
            player2Character2.characterStatusName = player2Character2.characterName
            player2.numberOfCharacter += 1
            print("Your second character name is \(character2Name)")
            player2Characters.append(player2Character2)
            allGameNames.append(character2Name)
        }
    }
    print("Choose his weapon:"
        + "\r1. Axe"
        + "\r2. Sword"
        + "\r3. Mace")
    if let character2Weapon = readLine() {
        switch character2Weapon {
        case "1": print("You choosed Axe")
        if player2.numberOfCharacter == 0 {
            player1Character2.characterWeapon = Weapon.axe
        }
        else {
            player2Character2.characterWeapon = Weapon.axe
            }
        case "2": print("You choosed Sword")
        if player2.numberOfCharacter == 0 {
            player1Character2.characterWeapon = Weapon.sword
        }
        else {
            player2Character2.characterWeapon = Weapon.sword
            }
        case "3": print("You choosed Mace")
        if player2.numberOfCharacter == 0 {
            player1Character2.characterWeapon = Weapon.mace
        }
        else {
            player2Character2.characterWeapon = Weapon.mace
            }
        default: print("A choice must be done, we've choosed axe for you !")
        if player2.numberOfCharacter == 0 {
            player1Character2.characterWeapon = Weapon.axe
        }
        else {
            player2Character2.characterWeapon = Weapon.axe
            }
            
        }
    }
}


func character3Creation() {
    print("Choose your last character name...")
    if let character3Name = readLine() {
        if allGameNames.contains(character3Name) {
                   print("This character name is allready taken, choose an other one")
                   character3Creation()
                   }
        else if player1.numberOfCharacter == 2 {
            player1Character3.characterName = character3Name
            player1Character3.characterStatusName = player1Character3.characterName
            player1.numberOfCharacter += 1
            print("Your third character name is \(character3Name)")
            player1Characters.append(player1Character3)
            allGameNames.append(character3Name)
        }
        else {
            player2Character3.characterName = character3Name
            player2Character3.characterStatusName = player2Character3.characterName
            player2.numberOfCharacter += 1
            print("Your third character name is \(character3Name)")
            player2Characters.append(player2Character3)
            allGameNames.append(character3Name)
        }
    }
    print("Choose his weapon:"
        + "\r1. Axe"
        + "\r2. Sword"
        + "\r3. Mace")
    if let character2Weapon = readLine() {
        switch character2Weapon {
        case "1": print("You choosed Axe")
        if player2.numberOfCharacter == 0 {
            player1Character3.characterWeapon = Weapon.axe
        }
        else {
            player2Character3.characterWeapon = Weapon.axe
            }
        case "2": print("You choosed Sword")
        if player2.numberOfCharacter == 0 {
            player1Character3.characterWeapon = Weapon.sword
        }
        else {
            player2Character3.characterWeapon = Weapon.sword
            }
        case "3": print("You choosed Mace")
        if player2.numberOfCharacter == 0 {
            player1Character3.characterWeapon = Weapon.mace
        }
        else {
            player2Character3.characterWeapon = Weapon.mace
            }
        default: print("A choice must be done, we've choosed axe for you !")
        if player2.numberOfCharacter == 0 {
            player1Character3.characterWeapon = Weapon.axe
        }
        else {
            player2Character3.characterWeapon = Weapon.axe
            }
            
        }
    }
}


func lifeStatus() {
    print("Status of \(player1.playerName) team" )
    print("\(player1Character1.characterStatusName)  \(player1Character1.characterLife) Heal Points")
    print("\(player1Character2.characterStatusName)  \(player1Character2.characterLife) Heal Points")
    print("\(player1Character3.characterStatusName)  \(player1Character3.characterLife) Heal Points")
    
    print("Status of \(player2.playerName) team" )
    print("\(player2Character1.characterStatusName)  \(player2Character1.characterLife) Heal Points")
    print("\(player2Character2.characterStatusName)  \(player2Character2.characterLife) Heal Points")
    print("\(player2Character3.characterStatusName)  \(player2Character3.characterLife) Heal Points")
}


