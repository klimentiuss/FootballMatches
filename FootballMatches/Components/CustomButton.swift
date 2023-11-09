//
//  CustomButton.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct CustomButton: View {
    
    @Binding var isStatisticSelected: Bool
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 57, height: 32)
                .cornerRadius(25)
                .foregroundColor( isStatisticSelected ? .fcGray : .brightOrange)
                .overlay {
                    Text("H2H")
                        .font(.custom("SFPro-Medium", size: 17))
                        .foregroundColor( isStatisticSelected ? .lightGray : .white)
                }
                .onTapGesture {
                    isStatisticSelected = false
                }
            
            Rectangle()
                .frame(width: 88, height: 32)
                .cornerRadius(25)
                .foregroundColor( isStatisticSelected ? .brightOrange : .fcGray)
                .overlay {
                    Text("Statistic")
                        .font(.custom("SFPro-Medium", size: 17))
                        .foregroundColor( isStatisticSelected ? .white : .lightGray)
                }
                .onTapGesture {
                    isStatisticSelected = true
                }
            Spacer()
        }
        .padding(.top)
        .padding(.bottom, -10)
        .padding(.leading)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(isStatisticSelected: .constant(true))
    }
}
