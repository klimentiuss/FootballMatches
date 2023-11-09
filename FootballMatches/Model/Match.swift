//
//  Match.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import Foundation



struct Match: Hashable, Identifiable {
    
    var id: UUID?
    var commands: [Command : Command] = [:]
    var date: String?
    var time: String?
    var startEventTime: String?
    var isLive: Bool
    var score: String?
    var matchTimeMinute: String?
    var leagueName: String?
    
}


struct Command: Hashable, Equatable {
    let id: UUID?
    var name: String?
    var image: String?
}


extension Match {
    static var MOCK_MATCH = Match(id: UUID(), commands: [Command.MOCK_COMMAND : Command.MOCK_COMMAND], date: nil, time: nil, startEventTime: nil, isLive: true, score: "1 : 2", matchTimeMinute: "84'", leagueName: "Premier League")
}

extension Command {
    static var MOCK_COMMAND = Command(id: UUID(), name: "Royal Phoenix FC", image: "logo")
}
