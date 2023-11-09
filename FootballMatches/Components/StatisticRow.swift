//
//  StatisticRow.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct StatisticRow: View {
    
    var stat: Statistic
    
    var body: some View {
        HStack {
            
            Text(stat.results.keys.first ?? "")
                .foregroundColor(.white)
                .font(.custom("SFPro-Medium", size: 16))
            Spacer()
            Text(stat.description ?? "")
                .foregroundColor(.lightGray)
                .font(.custom("SFPro-Medium", size: 14))
            Spacer()
            Text(stat.results.values.first ?? "")
                .foregroundColor(.white)
                .font(.custom("SFPro-Medium", size: 16))
            
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct StatisticRow_Previews: PreviewProvider {
    static var previews: some View {
        StatisticRow(stat: Statistic(description: "Adsad", results: ["11" : "11"]))
    }
}
