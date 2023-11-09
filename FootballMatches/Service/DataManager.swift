//
//  DataManager.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import Foundation


class DataManager {
    
    static let shared = DataManager()
    
    private init(){}
    
    func getMatches() -> [Match] {
        var matches: [Match] = []
        
        var soonMatch = Match(isLive: false)
        soonMatch.id = UUID()
        soonMatch.commands = [Command.MOCK_COMMAND : Command.MOCK_COMMAND]
        soonMatch.date = "8 July"
        soonMatch.time = "18:00"
        soonMatch.leagueName = "Premier League"
        soonMatch.startEventTime = "12:00"
        
        
        var liveMatch = Match(isLive: true)
        liveMatch.id = UUID()
        liveMatch.commands = [Command.MOCK_COMMAND : Command.MOCK_COMMAND]
        liveMatch.matchTimeMinute = "84'"
        liveMatch.leagueName = "Premier League"
        liveMatch.score = "1 : 2"
        
        var defaultMatch = Match(isLive: false)
        defaultMatch.id = UUID()
        defaultMatch.commands = [Command.MOCK_COMMAND : Command.MOCK_COMMAND]
        defaultMatch.date = "8 July"
        defaultMatch.time = "18:00"
        defaultMatch.matchTimeMinute = "84'"
        defaultMatch.leagueName = "Premier League"
        defaultMatch.score = "1 : 2"
        
        matches.append(soonMatch)
        matches.append(liveMatch)
        
        for _ in 1...13 {
            matches.append(defaultMatch)
        }

        return matches
    }
    
    
    func getStatistic() -> [Statistic] {
        return [
            Statistic(description: "Ball Proffesional", results: ["55%" : "45%"]),
            Statistic(description: "Goal Attempts", results: ["4" : "4"]),
            Statistic(description: "Shots on Goal", results: ["2" : "3"]),
            Statistic(description: "Shots of Goal", results: ["3" : "2"]),
            Statistic(description: "Free Kicks", results: ["0" : "0"]),
            Statistic(description: "Offsides", results: ["1" : "0"]),
            Statistic(description: "Yellow Cards", results: ["1" : "0"]),
            Statistic(description: "Red Cards", results: ["2" : "1"]),
            Statistic(description: "Cresses", results: ["1" : "4"])
        ]
    }

}
