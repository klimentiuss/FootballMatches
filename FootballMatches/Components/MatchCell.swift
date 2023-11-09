//
//  MatchCell.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct MatchCell: View {
    
    var match: Match
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 358, height: 129)
                .foregroundColor(Color.fcGray)
            
            VStack {
                Text(match.leagueName ?? "Some League")
                    .foregroundColor(.white)
                    .font(.system(size: 10))
                
                HStack {
                    CommandView(command: match.commands.keys.first, isLarge: false)
                    VStack {
                        
                        Text(match.isLive
                             ? match.score ?? ""
                             : match.startEventTime ?? match.score ?? ""
                        )
                            .font(.custom("PilatExtended-Bold", size: 20))
                            .foregroundColor(.white)
                            .frame(width: 85)
                        
                        HStack(spacing: 2) {
                            if match.isLive {
                                Text("●")
                                    .font(.system(size: 7))
                                    .foregroundColor(Color.brightOrange)
                            }
                            Text(match.matchTimeMinute ?? "")
                                .foregroundColor(match.isLive ? .lightGray : .brightOrange)
                                .font(.custom("SFPro-Medium", size: 16))
                        }
                        .padding(.vertical, -12 )
                    }
                    
                    CommandView(command: match.commands.values.first, isLarge: false)
                }
                
                if match.isLive {
                    Text("Live")
                        .foregroundColor(.white)
                        .font(.custom("SFPro-Medium", size: 10))
                } else {
                    HStack(spacing: 1){
                        Text("\(match.date ?? ""),")
                            .foregroundColor(Color.lightGray)
                            .font(.system(size: 10))
                        Text(match.time ?? "")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 10))
                    }
                }
                
                
                
            }
        }
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(lineWidth: 2)
                .frame(width: 358, height: 129)
                .foregroundColor( match.isLive ? .brightOrange : .lightGray)
            
        }
    }
    
    //    init() {
    //        for familyName in UIFont.familyNames {
    //            print(familyName)
    //
    //            for fontName in UIFont.fontNames(forFamilyName: familyName) {
    //                print("--- \(fontName)")
    //            }
    //        }
    //    }
}

struct MatchCell_Previews: PreviewProvider {
    static var previews: some View {
        MatchCell(match: Match.MOCK_MATCH)
    }
}
