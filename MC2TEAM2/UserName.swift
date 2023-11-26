//
//  UserName.swift
//  MC2TEAM2
//
//  Created by suha alrajhi on 05/05/1445 AH.
//


import SwiftUI

struct UserName: View {
    @State private var nameText = ""
    @State private var isButtonTapped = false
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        
            
            VStack(spacing:30){
                
            Spacer()
            Text("شاركنا اسمك: ")
                .font(
                    Font.custom("Inter", size: 32)
                        .weight(.bold)
                )
                .padding(.leading, 200)
                .foregroundColor(.black)
       
                
                TextField("أكتب اسمك هنا", text: $nameText)
                    .multilineTextAlignment(.trailing)
                    .frame(width: 330, height:36)
                    .background(Color(hex: 0xABDFC7))
                    .shadow(color:.black.opacity(0.25), radius: 2, x: 1, y: 2)
                    .cornerRadius(8.0)
                
                
                Button(action: {
                            // Add your button action here
                        }){
                            
                 
                            Text("التالي")
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
                
            }.offset(x:0,y:-200)
            
        }
    }
}


#Preview {
    UserName()
}
