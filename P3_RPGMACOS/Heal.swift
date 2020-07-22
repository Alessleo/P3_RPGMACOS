//
//  Heal.swift
//  P3_RPGMACOS
//
//  Created by Alessandro Leonardi on 22/07/2020.
//  Copyright © 2020 Alessandro Leonardi. All rights reserved.
//

import Foundation

func healPlayer1() {
    print("Choose your healer...")
    chooseHealerPlayer1()
    print("Choose your ally to heal...")
    chooseCuredPlayer1()
    
}

func chooseHealerPlayer1() {
    print("1. \(player1Character1.characterStatusName) \(player1Character1.characterLife) HP \(player1Character1.characterMana) MP"
        + "\r2. \(player1Character2.characterStatusName) \(player1Character2.characterLife) HP \(player1Character2.characterMana) MP"
        + "\r3. \(player1Character3.characterStatusName) \(player1Character3.characterLife) HP \(player1Character3.characterMana) MP"
        + "\r4. <- Back")
    if let healerChoice = readLine() {
        switch healerChoice {
        case "1": if player1Character1.characterLife > 0 {
            print("You choosed \(player1Character1.characterName)")
            selectedAttacker.characterName = player1Character1.characterName
            selectedAttacker.characterMana = player1Character1.characterMana
        }
        else if player1Character1.characterMana <= 0 {
            print("\(player1Character1) is out of mana, choose someone else !")
            
        }
        else {
            print("\(player1Character1.characterName) is dead, choose an other healer !")
            chooseHealerPlayer1()
            }
        case "2": if player1Character2.characterLife > 0 {
            print("You choosed \(player1Character2.characterName)")
            selectedAttacker.characterName = player1Character2.characterName
            selectedAttacker.characterMana = player1Character2.characterMana
        }
        else if player1Character2.characterMana <= 0 {
            print("\(player1Character2) is out of mana, choose someone else !")
            chooseHealerPlayer1()
            
        }
        else {
            print("\(player1Character2.characterName) is dead, choose an other healer !")
            chooseHealerPlayer1()
            }
        case "3": if player1Character3.characterLife > 0 {
            print("You choosed \(player1Character3.characterName)")
            selectedAttacker.characterName = player1Character3.characterName
            selectedAttacker.characterMana = player1Character3.characterMana
        }
        else if player1Character3.characterMana <= 0 {
            print("\(player1Character3) is out of mana, choose someone else !")
            
        }
        else {
            print("\(player1Character3.characterName) is dead, choose an other healer !")
            chooseHealerPlayer1()
            }
        case "4": player1Turn()
        default: print("You need to choose a healer or go back !")
            chooseHealerPlayer1()
        }
    }
}



func chooseCuredPlayer1() {
    if selectedAttacker.characterName == player1Character1.characterName {
       print("1. You can't do auto-healing, choose someone else"
            + "\r2. \(player1Character2.characterStatusName) \(player1Character2.characterLife) HP"
            + "\r3. \(player1Character3.characterStatusName) \(player1Character3.characterLife) HP")
    }
    else if selectedAttacker.characterName == player1Character2.characterName {
    print("1. \(player1Character1.characterStatusName) \(player1Character1.characterLife) HP"
    + "\r2. You can't do auto-healing, choose someone else"
    + "\r3. \(player1Character3.characterStatusName) \(player1Character3.characterLife) HP")
    }
    else if selectedAttacker.characterName == player1Character3.characterName {
        print("1. \(player1Character1.characterStatusName) \(player1Character1.characterLife) HP"
        + "\r2. \(player1Character2.characterStatusName) \(player1Character2.characterLife) HP"
        + "\r3. You can't do auto-healing, choose someone else")
    }
    
    if let curedChoice = readLine() {
        switch curedChoice {
        case "1": if selectedAttacker.characterName == player1Character1.characterName {
                    print("You cannot choose yourself, pick someone else")
        }
            else {
            player1Character1.characterLife = player1Character1.characterLife + 10
            
            }
        case "2": if selectedAttacker.characterName == player1Character2.characterName {
                    print("You cannot choose yourself, pick someone else")
        }
            else {
            player1Character2.characterLife = player1Character2.characterLife + 10
            
            }
        case "3": if selectedAttacker.characterName == player1Character3.characterName {
                    print("You cannot choose yourself, pick someone else")
        }
            else {
            player1Character3.characterLife = player1Character3.characterLife + 10
            
            }
        default: print("You have to choose an ally")
            chooseCuredPlayer1()
        }
    }
    if selectedAttacker.characterName == player1Character1.characterName {
        player1Character1.characterMana -= 25
    }
    else if selectedAttacker.characterName == player1Character2.characterName {
    player1Character2.characterMana -= 25
}
    else if selectedAttacker.characterName == player1Character3.characterName {
    player1Character3.characterMana -= 25
}
}
