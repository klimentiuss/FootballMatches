//
//  ScoreDetail.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct ScoreDetail: View {
    
    var match: Match
    
    var body: some View {
        VStack{
            Text(match.leagueName ?? "")
                .foregroundColor(.brightOrange)
                .font(.custom("SFPro-Medium", size: 14))
                .padding(.top)
            HStack {
                CommandView(command: match.commands.keys.first, isLarge: true)
                Spacer()
                
                VStack {
                    Text(match.score ?? match.startEventTime ?? "")
                        .font(.custom("PilatExtended-Bold", size: 20))
                        .foregroundColor(.white)

                    Text(match.matchTimeMinute ?? "")
                        .font(.custom("SFPro-Medium", size: 16))
                        .foregroundColor(.brightOrange)
                }
                Spacer()
                CommandView(command: match.commands.keys.first, isLarge: true)
            }
            .padding(.horizontal, 35)
            
            
            HStack(spacing: 3) {
                
                if let _ = match.date {
                    Text("\(match.date ?? ""),")
                        .foregroundColor(.lightGray)
                        .font(.custom("SFPro-Medium", size: 14))
                }
                
                Text(match.time ?? "Live")
                    .font(.custom("SFPro-Medium", size: 14))
                    .foregroundColor(.white)
            }
        }
    }
}

struct ScoreDetail_Previews: PreviewProvider {
    static var previews: some View {
        ScoreDetail(match: Match.MOCK_MATCH)
            
    }
}
