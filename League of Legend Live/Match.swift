//
//  Match.swift
//  League of Legend Live
//
//  Created by NeoPolitica TV on 18/12/14.
//  Copyright (c) 2014 Denethiel Studio. All rights reserved.
//

import Foundation

struct Summoner {
    var profileIconId:Int
    var accountId:Int
    var summonerId:Int
    var originalAccountNumber:Int
    var summonerInternalName:String
    var summonerName:String
}

struct Champions {
    var championId:Int
    
}

struct bannedChamptions{
    
}

struct Match {
    var gameType:String
    var gameState:String
    var id:String
    
}