//
//  Player.swift
//  P3_RPGMACOS
//
//  Created by Alessandro Leonardi on 20/07/2020.
//  Copyright © 2020 Alessandro Leonardi. All rights reserved.
//

import Foundation

class Player {
    var playerName: String
    var numberOfCharacter: Int
    init(playerName: String, numberOfCharacter: Int) {
        self.playerName = playerName
        self.numberOfCharacter = numberOfCharacter
    }
}

var player1 = Player(playerName: "", numberOfCharacter: 0)
var player2 = Player(playerName: "", numberOfCharacter: 0)




func player1Creation() {
    print("Player 1, choose your name ! ")
    if let namePlayer1: String = readLine() {
        print("Your name is \(namePlayer1) as player 1" )
        player1.playerName = namePlayer1
        
    }
}


func player2Creation() {
    print("Player 2, choose your name !")
    if let namePlayer2: String = readLine() {
        if namePlayer2 == player1.playerName {
            print("This player name is allready taken, choose an other one")
            player2Creation()
        }
        else {
            print("Your name is \(namePlayer2) as player 2")
            player2.playerName = namePlayer2
        }
    }
}



