//
//  ContentView.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSecondView = false
    
    var body: some View {
        if !showSecondView {
            ZStack {
              BackgroundView()
                ProgressView()
                    .tint(.white)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                showSecondView = true
                            }
                        }
                    }
            }
            
        } else {
            MatcheListView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
