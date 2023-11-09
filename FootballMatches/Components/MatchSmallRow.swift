//
//  MatchSmallRow.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

protocol StringChangeble {
    func replaceColonWithHyphen(in input: String) -> String
}

extension StringChangeble {
    func replaceColonWithHyphen(in input: String) -> String {
        return input.replacingOccurrences(of: ":", with: "-")
    }
}

struct MatchSmallRow: View, StringChangeble {
    
    var match: Match
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.smallRowGray)
                .frame(height: 69)
                .overlay {
                    VStack {
                        HStack(spacing: 3) {
                            
                            Text("\(match.date ?? ""),")
                                .foregroundColor(.lightGray)
                                .font(.custom("SFPro-Medium", size: 10))
                          
                            Text(match.time ?? "Live")
                                .font(.custom("SFPro-Medium", size: 10))
                                .foregroundColor(.lightGray)
                        }
                        
                        HStack {
                            Text(match.commands.keys.first?.name ?? "")
                                .foregroundColor(.white)
                                .font(.custom("SFPro-Medium", size: 14))
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 62, height: 25)
                                .foregroundColor(.brightOrange)
                                .opacity(0.4)
                                .overlay {
                                    Text(replaceColonWithHyphen(in: match.score ?? ""))
                                        .foregroundColor(.brightOrange)
                                }
                                .padding(.horizontal)
                            
                            Text(match.commands.keys.first?.name ?? "")
                                .foregroundColor(.white)
                                .font(.custom("SFPro-Medium", size: 14))
                        }
                    }
                }
        }
        .padding(.horizontal)
    }
    
    

}

struct MatchSmallRow_Previews: PreviewProvider {
    static var previews: some View {
        MatchSmallRow(match: Match.MOCK_MATCH)
    }
}
