//
//  Game.swift
//  P3_RPGMACOS
//
//  Created by Alessandro Leonardi on 20/07/2020.
//  Copyright © 2020 Alessandro Leonardi. All rights reserved.
//

import Foundation


class Game {
    var numberOfTurns = 0
    var gameIsOver = false
}

var rpgGame = Game()


func teamsCreation() {
    player1Creation()
    character1Creation()
    character2Creation()
    character3Creation()
    player2Creation()
    character1Creation()
    character2Creation()
    character3Creation()
}

func gamePlay() {
    player1Turn()
    if player2.numberOfCharacter == 0 {
        print("Player 1: \(player1.playerName) WIN")
        lifeStatus()
        print("The game has ended in \(rpgGame.numberOfTurns) turns")
        rpgGame.gameIsOver = true
        
    }
    else {
        player2Turn()
        if player1.numberOfCharacter == 0 {
            print("Player 2 : \(player2.playerName) win")
            lifeStatus()
            print("The game has ended in \(rpgGame.numberOfTurns) turns")
            rpgGame.gameIsOver = true
            
        }
    }
}






