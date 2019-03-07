//
//  ScheduleInterfaceController.swift
//  FifaWorldCup WatchKit Extension
//
//  Created by Hiten Patel on 2019-03-06.
//  Copyright © 2019 MAD. All rights reserved.
//

import WatchKit
import Foundation

//control the functions for the watch schedule navigation
class ScheduleInterfaceController: WKInterfaceController {
    
    
    @IBOutlet weak var scheduleTable: WKInterfaceTable!
    
    //make an empty arrya for the gamelist data
    var gameList:[ScheduleObject] = []
    
    
    //function for adding data to the empty array
    func scheduleData() {
        
//        //specify the gamelist data
//        let c1 = ScheduleObject(team1Image: "france", team1Name: "france", team2Image: "south_korea", team2Name: "South Korea")
//        let c2 = ScheduleObject(team1Image: "norway", team1Name: "Norway", team2Image: "nigeria", team2Name: "Nigeria")
//        let c3 = ScheduleObject(team1Image: "france", team1Name: "france1", team2Image: "france", team2Name: "italy1")
//        let c4 = ScheduleObject(team1Image: "france", team1Name: "france1", team2Image: "france", team2Name: "italy1")
//        let c5 = ScheduleObject(team1Image: "france", team1Name: "france1", team2Image: "france", team2Name: "italy1")
//        
//        //append data to the empty array
//        gameList.append(c1)
//        gameList.append(c2)
//        gameList.append(c3)
//        gameList.append(c4)
//        gameList.append(c5)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("Schedule")
        
        //call the data function
        self.scheduleData()
        
        //get the number of rows and set it with the na e of rows as "myRow"
        self.scheduleTable.setNumberOfRows(self.gameList.count, withRowType: "myRow")
        
        for(i,schedule) in self.gameList.enumerated() {
            //set the data on the table
            let row = self.scheduleTable.rowController(at: i) as! ScheduleRowController
            
            //team1Image
            row.team1Image.setImage(UIImage(named: schedule.team1Image!))
            //team1Name
            row.scheduleName1Label.setText(schedule.team1Name)
            
            //team2Image
            row.team2Image.setImage(UIImage(named: schedule.team2Image!))
            //team2Name
            row.scheduleName2Label.setText(schedule.team2Name)
            
            
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
