//
//  Settings.swift
//  League of Legend Live
//
//  Created by NeoPolitica TV on 18/12/14.
//  Copyright (c) 2014 Denethiel Studio. All rights reserved.
//

import Foundation

class Settings {

    class func RiotBaseURl()->String{
        return "https://{region}.api.pvp.net"
    }
    
    class func spectatorRequest(region:String, summonerName:String)->NSURLRequest{
        var request:NSMutableURLRequest = NSMutableURLRequest(URL: NSURL(string: "https://spectator-league-of-legends-v1.p.mashape.com/lol/lan/v1/spectator/by-name/\(summonerName)")!)
        request.HTTPMethod = "GET"
        
        request.addValue("lGZJMfxouLmshSldH6oK5BRNkAWKp1rMlUljsnPhpu7Q51iP10", forHTTPHeaderField: "X-Mashape-Key")
        
        return request
        
    }
    
    
}