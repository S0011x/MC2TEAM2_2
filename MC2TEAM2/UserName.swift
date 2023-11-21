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
    //send name to user goal
    var body: some View {
        //NavigationStack{
        ZStack(alignment: .bottom){

            
            VStack{
                Image("")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 350,height: 350)
                    .padding(.bottom,315)
            }
      
            
         
            VStack{
                Text(" شاركنا باسمك !")
                    .font(.system(size: 16))
                TextField("ادخل اسمك هنا", text: $nameText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 330,height:48)
                    .padding(.bottom,230)
            }
            
            
            
            VStack{
 Text(" أهلا! حاب اتعرف عليك ")
                
                    .font(.system(size: 16))
                    .bold()

                    .padding(.bottom,620)
                    .padding(.leading,10)
                    
            }
        VStack{
            Spacer()
            Image("bottomEffect")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 1000)
                .padding(.trailing,40)
                .padding(.top,500)
            
        }
        VStack {
            
   // NavigationLink("التالي",destination:ContentView())
 //   NavigationLink(destination: ContentView()) {
                
                Button("التالي", action:{
                    isButtonTapped = true
                })
              
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .frame(width: 330 ,height: 48)
                
                .cornerRadius(24)
                .padding(.bottom,50)
                
         //   }  //navigation
    // .fullScreenCover(isPresented: $isButtonTapped, content: {
            //ContentView(name:name )
                           // })
        }
      //  .navigationBarTitle("المعلومات المالية")

        
    
}
    .padding()
         //navStack

      //  .navigationBarTitle(Text("Login"))
        
    }
}



#Preview {
    UserName()
}
