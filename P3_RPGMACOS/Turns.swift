//
//  Turns.swift
//  P3_RPGMACOS
//
//  Created by Alessandro Leonardi on 22/07/2020.
//  Copyright © 2020 Alessandro Leonardi. All rights reserved.
//

import Foundation

var resetAttack = false
var resetHeal = false

func player1Turn() {
    resetAttack = false
    resetHeal = false
    print("\(player1.playerName) turn"
         + "\r1. Attack"
         + "\r2. Heal")
     if let turnChoice = readLine() {
           switch turnChoice {
           case "1": attackPlayer1()
           case "2": healPlayer1()
           default: print("A choice muste be done...")
           player1Turn()
           }
       }
    rpgGame.numberOfTurns += 1
}


func player2Turn() {
    resetAttack = false
    resetHeal = false
    print("\(player2.playerName) turn"
        + "\r1. Attack"
        + "\r2. Heal")
    if let turnChoice = readLine() {
        switch turnChoice {
        case "1": attackPlayer2()
        case "2": healPlayer2()
        default: print("A choice muste be done...")
        player2Turn()
        }
    }
    rpgGame.numberOfTurns += 1
    
}




