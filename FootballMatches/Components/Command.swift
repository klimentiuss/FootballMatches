//
//  Command.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct CommandView: View {
    var command: Command?
    var isLarge: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Image(command?.image ?? "Globe")
                .resizable()
                .frame(width: isLarge ? 64 : 48, height: isLarge ? 64 : 48)
            Text(command?.name ?? "Some command")
                .foregroundColor(.white)
                .font(.custom("SFPro-Medium", size: isLarge ? 17 : 14))
                .multilineTextAlignment(.center)
        }
        .frame(width: isLarge ? 88 : 116)

    }
}

struct CommandView_Previews: PreviewProvider {
    static var previews: some View {
        CommandView(command: Command.MOCK_COMMAND, isLarge: true)
            .preferredColorScheme(.dark)
    }
}
