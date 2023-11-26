//
//  HelloScreen.swift
//  MC2TEAM2
//
//  Created by suha alrajhi on 08/05/1445 AH.
//

import SwiftUI
struct HelloScreen: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
               Text(" أهلا، الاسم ")
                   .padding(.top,-300)
                  .padding(.leading, 180)
                .font(
                      Font.custom("Inter", size: 40)
                         .weight(.bold)
                    )
                    
                .foregroundColor(.black)
                    
            }
            
         /*   NavigationView {
                        VStack {
                            NavigationLink(destination: homeScreenView()) {
                                Text("Go to Second View")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                        }
                        .navigationTitle("تراجع")
                        .navigationBarItems(trailing:
                            NavigationLink(destination: UserName()) {
                                Text("")
                                    .padding()
                                    .foregroundColor(.blue)
                            }
                        )
                    }
            */
            
            VStack (spacing:20){
               Text("اختر ما الذي تريد تعلمه اليوم؟")
                   
                
                .font(
                      Font.custom("Inter", size: 32)
                         .weight(.bold))
                .foregroundColor(.black)
                
                Button(action: {
                            // Add your button action here
                        }){
                            
                 
                            Text("تعلّم عن الأمن السبراني")
                                .foregroundColor(.black)
                                .font(.headline)
                                .frame(width: 300, height: 150)
                                .background(Color(red: 0.67, green: 0.87, blue: 0.78))
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)

                                
                                
                        }
                
                Button(action: {
                            // Add your button action here
                        }){
                            
                 
                            Text("هيا نلعب!")
                                .foregroundColor(.black)
                                .font(.headline)
                                .frame(width: 300, height: 150)
                                .background(Color(red: 0.5, green: 0.72, blue: 0.86))                                .cornerRadius(8)
                                .cornerRadius(30)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)
                        }
                    
            }
        }
    }
}

#Preview {
    HelloScreen()
}
