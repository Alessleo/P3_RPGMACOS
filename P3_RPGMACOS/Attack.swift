//
//  Attack.swift
//  P3_RPGMACOS
//
//  Created by Alessandro Leonardi on 22/07/2020.
//  Copyright © 2020 Alessandro Leonardi. All rights reserved.
//

import Foundation

func attackPlayer1() {
    print("Choose your fighter...")
    chooseAttackerPlayer1()
     if resetAttack == false {
    print("Choose your opponent...")
    chooseOpponentPlayer1()
     }
      else {
          player1Turn()
      }
  }


func attackPlayer2() {
    print("Choose your fighter...")
    chooseAttackerPlayer2()
    if resetAttack == false {
    print("Choose your opponent...")
    chooseOpponentPlayer2()
    }
    else {
        player2Turn()
    }
}

func chooseAttackerPlayer1() {
    resetAttack = false
    print("1. \(player1Character1.characterStatusName) \(player1Character1.characterLife) HP"
        + "\r2. \(player1Character2.characterStatusName) \(player1Character2.characterLife) HP"
        + "\r3. \(player1Character3.characterStatusName) \(player1Character3.characterLife) HP"
        + "\r4. <- Back")
    
    
    if let attackerChoice = readLine() {
        switch attackerChoice {
        case "1": if player1Character1.characterLife > 0 {
            print("You choosed \(player1Character1.characterName)")
            selectedAttacker.characterName = player1Character1.characterName
            selectedAttacker.characterWeapon = player1Character1.characterWeapon
            chest()
        }
        else {
            print("\(player1Character1.characterName) is dead, choose an other fighter !")
            chooseAttackerPlayer1()
            }
        case "2": if player1Character2.characterLife > 0 {
            print("You choosed \(player1Character2.characterName)")
            selectedAttacker.characterName = player1Character2.characterName
            selectedAttacker.characterWeapon = player1Character2.characterWeapon
             chest()
        }
        else {
            print("\(player1Character2.characterName) is dead, choose an other fighter !")
            chooseAttackerPlayer1()
            }
        case "3": if player1Character3.characterLife > 0 {
            print("You choosed \(player1Character3.characterName)")
            selectedAttacker.characterName = player1Character3.characterName
            selectedAttacker.characterWeapon = player1Character3.characterWeapon
             chest()
        }
        else {
            print("\(player1Character3.characterName) is dead, choose an other fighter !")
            chooseAttackerPlayer1()
            }
        case "4": resetAttack = true
                   
        default: print("You need to choose a fighter or go back!")
        chooseAttackerPlayer1()
        }
    }
}


func chooseOpponentPlayer1() {
    print("1. \(player2Character1.characterStatusName) \(player2Character1.characterLife) HP"
        + "\r2. \(player2Character2.characterStatusName) \(player2Character2.characterLife) HP"
        + "\r3. \(player2Character3.characterStatusName) \(player2Character3.characterLife) HP")
    
    if let opponentChoice = readLine() {
        switch opponentChoice {
        case "1": if player2Character1.characterLife > 0 {
            print("You attacked \(player2Character1.characterName)")
            selectedDefender.characterName = player2Character1.characterName
            selectedDefender.characterLife = player2Character1.characterLife
            selectedDefender.characterLife -= selectedAttacker.characterWeapon.weaponDamage()
            player2Character1.characterLife = selectedDefender.characterLife
        }
        else {
            print("This opponent is dead, choose an other one!")
            chooseOpponentPlayer1()
        }
        if player2Character1.characterLife <= 0 {
            player2Character1.characterLife = 0
            player2Character1.characterStatusName = ("\(player2Character1.characterName)  \(deadStatus)")
            player2.numberOfCharacter -= 1
            }
        case "2": if player2Character2.characterLife > 0 {
            print("You attacked \(player2Character2.characterName)")
            selectedDefender.characterName = player2Character2.characterName
            selectedDefender.characterLife = player2Character2.characterLife
            selectedDefender.characterLife -= selectedAttacker.characterWeapon.weaponDamage()
            player2Character2.characterLife = selectedDefender.characterLife
        }
        else {
            print("This opponent is dead, choose an other one!")
            chooseOpponentPlayer1()
        }
        if player2Character2.characterLife <= 0 {
            player2Character2.characterLife = 0
            player2Character2.characterStatusName = ("\(player2Character2.characterName)  \(deadStatus)")
            player2.numberOfCharacter -= 1
            }
        case "3": if player2Character3.characterLife > 0 {
            print("You attacked \(player2Character3.characterName)")
            selectedDefender.characterName = player2Character3.characterName
            selectedDefender.characterLife = player2Character3.characterLife
            selectedDefender.characterLife -= selectedAttacker.characterWeapon.weaponDamage()
            player2Character3.characterLife = selectedDefender.characterLife
        }
        else {
            print("This opponent is dead, choose an other one!")
            chooseOpponentPlayer1()
        }
        if player2Character3.characterLife <= 0 {
            player2Character3.characterLife = 0
            player2Character3.characterStatusName = ("\(player2Character3.characterName)  \(deadStatus)")
            player2.numberOfCharacter -= 1
            }
        default: print("You need to choose an opponent !")
        chooseOpponentPlayer1()
        }
    }
}

func chooseAttackerPlayer2() {
    print(
        "1. \(player2Character1.characterStatusName) \(player2Character1.characterLife) HP"
            + "\r2. \(player2Character2.characterStatusName) \(player2Character2.characterLife) HP"
            + "\r3. \(player2Character3.characterStatusName) \(player2Character3.characterLife) HP"
            + "\r4. <- Back")
    
    
    if let attackerChoice = readLine() {
        switch attackerChoice {
        case "1": if player2Character1.characterLife > 0 {
            print("You choosed \(player2Character1.characterName)")
            selectedAttacker.characterName = player2Character1.characterName
            selectedAttacker.characterWeapon = player2Character1.characterWeapon
             chest()
        }
        else {
            print("\(player2Character1.characterName) is dead, choose an other fighter !")
            chooseAttackerPlayer2()
            }
        case "2": if player2Character2.characterLife > 0 {
            print("You choosed \(player2Character2.characterName)")
            selectedAttacker.characterName = player2Character2.characterName
            selectedAttacker.characterWeapon = player2Character2.characterWeapon
             chest()
        }
        else {
            print("\(player2Character2.characterName) is dead, choose an other fighter !")
            chooseAttackerPlayer2()
            }
        case "3": if player2Character3.characterLife > 0 {
            print("You choosed \(player2Character3.characterName)")
            selectedAttacker.characterName = player2Character3.characterName
            selectedAttacker.characterWeapon = player2Character3.characterWeapon
             chest()
        }
        else {
            print("\(player2Character3.characterName) is dead, choose an other fighter !")
            chooseAttackerPlayer2()
            }
        case "4": resetAttack = true
        default: print("You need to choose a fighter or go back!")
        chooseAttackerPlayer2()
        }
    }
}

func chooseOpponentPlayer2() {
    print(
        "1. \(player1Character1.characterStatusName) \(player1Character1.characterLife) HP"
            + "\r2. \(player1Character2.characterStatusName) \(player1Character2.characterLife) HP"
            + "\r3. \(player1Character3.characterStatusName) \(player1Character3.characterLife) HP")
    
    if let opponentChoice = readLine() {
        switch opponentChoice {
        case "1": if player1Character1.characterLife > 0 {
            print("You attacked \(player1Character1.characterName)")
            selectedDefender.characterName = player1Character1.characterName
            selectedDefender.characterLife = player1Character1.characterLife
            selectedDefender.characterLife -= selectedAttacker.characterWeapon.weaponDamage()
            player1Character1.characterLife = selectedDefender.characterLife
        }
        else {
            print("This opponent is dead, choose an other one!")
            chooseOpponentPlayer2()
        }
        if player1Character1.characterLife <= 0 {
            player1Character1.characterLife = 0
            player1Character1.characterStatusName = ("\(player1Character1.characterName)  \(deadStatus)")
            player1.numberOfCharacter -= 1
            }
        case "2": if player1Character2.characterLife > 0 {
            print("You attacked \(player1Character2.characterName)")
            selectedDefender.characterName = player1Character2.characterName
            selectedDefender.characterLife = player1Character2.characterLife
            selectedDefender.characterLife -= selectedAttacker.characterWeapon.weaponDamage()
            player1Character2.characterLife = selectedDefender.characterLife
        }
        else {
            print("This opponent is dead, choose an other one!")
            chooseOpponentPlayer2()
        }
        if player1Character2.characterLife <= 0 {
            player1Character2.characterLife = 0
            player1Character2.characterStatusName = ("\(player1Character2.characterName)  \(deadStatus)")
            player1.numberOfCharacter -= 1
            }
        case "3": if player1Character3.characterLife > 0 {
            print("You attacked \(player1Character3.characterName)")
            selectedDefender.characterName = player1Character3.characterName
            selectedDefender.characterLife = player1Character3.characterLife
            selectedDefender.characterLife -= selectedAttacker.characterWeapon.weaponDamage()
            player1Character3.characterLife = selectedDefender.characterLife
        }
        else {
            print("This opponent is dead, choose an other one!")
            chooseOpponentPlayer2()
        }
        if player1Character3.characterLife <= 0 {
            player1Character3.characterLife = 0
            player1Character3.characterStatusName = ("\(player1Character3.characterName)  \(deadStatus)")
            player1.numberOfCharacter -= 1
            }
        default: print("You need to choose an opponent !")
        chooseOpponentPlayer2()
        }
    }
}

