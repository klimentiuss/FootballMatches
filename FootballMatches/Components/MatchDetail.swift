//
//  MatchDetail.swift
//  FootballMatches
//
//  Created by Daniil Klimenko on 09.11.2023.
//

import SwiftUI

struct MatchDetailBackground: View {
    
    var completion: () -> ()
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.fcGray)
                .ignoresSafeArea()
                .frame(height: 210)
                .overlay {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.lightGray)
                            .ignoresSafeArea()
                            .frame(height: 210)
                            .opacity(0.1)
                            .mask {
                                GeometryReader { geometry in
                                    ZStack {
                                        Image("ball")
                                            .resizable()
                                            .frame(width: 111, height: 111)
                                            .offset(x: geometry.size.width / 1.4, y: geometry.size.height * -0.4)
                                        
                                        Image("ball")
                                            .resizable()
                                            .frame(width: 151, height: 151)
                                            .offset(x: geometry.size.width / -9, y: geometry.size.height * 0.7)
                                        
                                    }
                                }
                                
                            }
                        HStack {
                            VStack {
                                Button {
                                    completion()
                                } label: {
                                    Image(systemName: "arrow.backward")
                                }
                                .tint(.lightGray)
                                Spacer()
                            }
                            .padding(.top, 6)
                            .padding(.leading)
                            
                            Spacer()
                        }
                        
                        VStack {
                            Text("Detail Events")
                                .font(.custom("PilatExtended-Bold", size: 16))
                                .foregroundColor(.white)
                            Spacer()
                        }
                       
                    }
                }
            
            
            
        }
    }
}

struct MatchDetailBackground_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailBackground(){}
    }
}
