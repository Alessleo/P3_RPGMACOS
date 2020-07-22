//
//  Turns.swift
//  P3_RPGMACOS
//
//  Created by Alessandro Leonardi on 22/07/2020.
//  Copyright © 2020 Alessandro Leonardi. All rights reserved.
//

import Foundation


func player1Turn() {
    print("\(player1.playerName) turn"
        + "\r1. Attack"
        + "\r2. Heal")
    if let turnChoice = readLine() {
        switch turnChoice {
        case "1":  attackPlayer1()
        case "2": healPlayer1()
        default: print("A choice muste be done...")
        player1Turn()
        }
    }
    rpgGame.numberOfTurns += 1
}


func player2Turn() {
    print("\(player2.playerName) turn"
        + "\r1. Attack"
        + "\r2. Heal")
    if let turnChoice = readLine() {
        switch turnChoice {
        case "1": attackPlayer2()
        case "2": print("Choose your ally")
        default: print("A choice muste be done...")
        player2Turn()
        }
    }
    rpgGame.numberOfTurns += 1
    
}



func choicePlayer1() {
    
}
