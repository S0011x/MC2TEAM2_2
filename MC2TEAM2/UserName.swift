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
                .padding(-35)
            
            VStack{
                
            Spacer()
            Text("شاركنا اسمك: ")
                .font(
                    Font.custom("Inter", size: 32)
                        .weight(.bold)
                )
                .padding(.leading, 200)
                .foregroundColor(.black)
       
        
                TextField("ادخل اسمك هنا", text: $nameText)
                    .foregroundColor(Color(hex: 0xABDFC7))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 330,height:70)
                    .padding(.bottom,180)
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)
                    .multilineTextAlignment(.trailing)
                
                
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
                
        }
            
        }
    }
}


#Preview {
    UserName()
}
