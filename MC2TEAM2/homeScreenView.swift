//
//  homeScreenView.swift
//  MC2TEAM2
//
//  Created by suha alrajhi on 08/05/1445 AH.
//

import SwiftUI

struct homeScreenView: View {
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 247, height: 246)
                    .padding(.bottom,305)
                    .opacity(4.0)
            }
            VStack {
                Spacer(minLength: 370)
                RoundedRectangle(cornerRadius: 10.0)
                    .foregroundColor(Color(hex: 0xABDFC7))
                    .frame(width: 300, height: 255)
                Spacer(minLength: 50)
                
            }
            VStack{
                Spacer(minLength: 400)
                Text("“حصّن”")
                  .font(
                    Font.custom("Inter", size: 32)
                      .weight(.bold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.13, green: 0.18, blue: 0.16))
                  .frame(width: 272, height: 2, alignment: .top)
                    .padding(.bottom, 10)
                
                Text("ما هو حصّن؟ :\nهو لعبة تركز على توعية الاطفال عن الامن السيبراني وكيفية كتابة رمز سري قوي عن طريق اللعبة\n")
                  .font(
                    Font.custom("Inter", size: 24)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.trailing)
                  .foregroundColor(.black.opacity(0.8))
                  .frame(width: 300, height: 220)
                
                Spacer(minLength: 40)
                
                Button(action: {
                            // Add your button action here
                        }) {
                            Text("لقد فهمت!")
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(width: 200, height: 58)
                                .background(Color(red: 0.13, green: 0.58, blue: 0.56).opacity(0.89))
                                .cornerRadius(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.13, green: 0.58, blue: 0.56), lineWidth: 1)
                                )
                        }
                
                
            
            }
        }
                        
                
        
    }
}

#Preview {
    homeScreenView()
}
