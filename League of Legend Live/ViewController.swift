//
//  ViewController.swift
//  League of Legend Live
//
//  Created by NeoPolitica TV on 17/12/14.
//  Copyright (c) 2014 Denethiel Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var request = NSMutableURLRequest(URL: NSURL(string: "https://spectator-league-of-legends-v1.p.mashape.com/lol/lan/v1/spectator/by-name/Arce")!)
        
        var session = NSURLSession.sharedSession()
        
        request.HTTPMethod = "GET"
        
        request.addValue("lGZJMfxouLmshSldH6oK5BRNkAWKp1rMlUljsnPhpu7Q51iP10", forHTTPHeaderField: "X-Mashape-Key")
        
        
        println(request.allHTTPHeaderFields?.description)
        
        var task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            println("Response: \(response)")
            var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            println("Body: \(strData)")
            
        })
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

