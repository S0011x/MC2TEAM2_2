//
//  cyberLearning.swift
//  MC2TEAM2
//
//  Created by suha alrajhi on 09/05/1445 AH.
//

import SwiftUI

struct cyberLearning: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
               Text("تعلّم عن الأمن السيبراني")
                   
                
                .font(
                      Font.custom("Inter", size: 32)
                         .weight(.bold))
                .foregroundColor(.black)
                
                Button(action: {
                            // Add your button action here
                        }){
                            
                 
                            Text("ماهو الامن السبراني؟")
                                .foregroundColor(.black)
                                .font(.headline)
                                .frame(width: 270, height: 140)
                                .background(Color(red: 0.67, green: 0.87, blue: 0.78))
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)

                                
                                
                        }
                
                Button(action: {
                            // Add your button action here
                        }){
                            
                 
                            Text("التنمر الإلكتروني")
                                .foregroundColor(.black)
                                .font(.headline)
                                .frame(width: 270, height: 140)
                                .background(Color(red: 1, green: 0.97, blue: 0.68))
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)

                                
                                
                        }
                
                Button(action: {
                            // Add your button action here
                        }){
                            
                 
                            Text("معايير كلمات المرور")
                                .foregroundColor(.black)
                                .font(.headline)
                                .frame(width: 270, height: 140)
                                .background(Color(red: 0.5, green: 0.72, blue: 0.86))                                .cornerRadius(8)
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)
                        }
                    
            }
            
            
            
            
            
        }
    }
}

#Preview {
    cyberLearning()
}
