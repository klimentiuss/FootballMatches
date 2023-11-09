//
//  MatcheListView.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct MatcheListView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(Color.darkGray)
        
        appearance.largeTitleTextAttributes = [
            .font : UIFont(name: "PilatExtended-Bold", size: 25)!,
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        appearance.titleTextAttributes = [
            .font : UIFont(name: "PilatExtended-Bold", size: 25)!,
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        UINavigationBar.appearance().tintColor = .white
        
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                ScrollView {
                    VStack {
                        ForEach(DataManager.shared.getMatches(), id: \.id) { match in
                            NavigationLink {
                                MatchDetailsView(match: match)
                                    .navigationBarBackButtonHidden()
                            } label: {
                                MatchCell(match: match)
                            }
                        }
                    }
                }
                .navigationTitle("ALL EVENTS")
            }
            
        }
        
    }
}

struct MatcheListView_Previews: PreviewProvider {
    static var previews: some View {
        MatcheListView()
    }
}
