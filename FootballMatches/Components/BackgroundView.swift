//
//  BackgroundView.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Rectangle()
            .ignoresSafeArea()
            .foregroundColor(.darkGray)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
