//
//  ScheduleObject.swift
//  FifaWorldCup WatchKit Extension
//
//  Created by Hiten Patel on 2019-03-06.
//  Copyright © 2019 MAD. All rights reserved.
//

import WatchKit

class ScheduleObject: NSObject {
   
    var team1Image:String?
    var team1Name: String?
    var team2Image:String?
    var team2Name: String?
   
    
    convenience override init() {
        self.init(team1Image: "france", team1Name: "france", team2Image: "italy", team2Name: "italy")
    }
    
    init(team1Image:String?,team1Name:String?,team2Image:String?,team2Name:String?) {
        self.team1Image = team1Image
        self.team1Name = team1Name
        self.team2Image = team2Image
        self.team2Name = team2Name
        
    }

}
