//
//  MatchDetailsView.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct MatchDetailsView: View {
    
    var match: Match
    
    @State private var isStatisticSelected = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                ZStack {
                    MatchDetailBackground() {
                        dismiss()
                    }
                    
                   ScoreDetail(match: match)
                }
                CustomButton(isStatisticSelected: $isStatisticSelected)
                
                if !isStatisticSelected {
                    ScrollView {
                        VStack {
                            ForEach(DataManager.shared.getMatches().reversed().prefix(5)) { match in
                                MatchSmallRow(match: match)
                                    .shadow(radius: 2)
                            }
                            
                            
                        }
                    }
                    .padding(.top)
                    .frame(height: 416)
                    .background(Color.fcGray)
                    Spacer()
                } else {
                    ZStack {
                        Rectangle()
                            .frame(height: 416)
                            .foregroundColor(.fcGray)
                        
                        VStack {
                            ForEach(DataManager.shared.getStatistic(), id: \.description) { statistic in
                                StatisticRow(stat: statistic)
                            }
                        }
                    }
                        
                    Spacer()
                }
                
            }
            
           
        }
    }
}

struct MatchDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailsView(match: Match.MOCK_MATCH)
    }
}
