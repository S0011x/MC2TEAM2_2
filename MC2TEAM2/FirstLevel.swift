//
//  Second_interface.swift
//  MC2
//
//  Created by Hams Alzahrani on 08/05/1445 AH.
//

import SwiftUI
//[A-Za-z0-9]+d
struct FirstLevel: View {
    @State var name: String = ""
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack(spacing:10){
                Text("المستوى الاول")
                    .font(.system(size: 32, weight: .medium))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.black)
                    .frame(width: 310, height: 37, alignment: .trailing)
                
                ZStack { Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 330, height: 646)
                        .background(Color(red: 0.67, green: 0.87, blue: 0.78))
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.47, green: 0.61, blue: 0.67).opacity(0.16), lineWidth: 1)
                        )
                    VStack(spacing:40){
                        
                        Text("أكتب كلمة مرور مكونة من ٥ أحرف أو أكثر يتبع القواعد التالية:\n\n1 - لا تكتب معلوماتك الشخصية مثل اسمك، و عمرك \n\n2 - يجب أن يكون هنالك على الأقل حرف واحد كبير \n \n3 - يجب أن يكون هنالك على الأقل حرف واحد صغير")
                            .font(.system(size: 20, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.black)
                            .frame(width: 280, alignment:.topTrailing)
                        
                        
                        TextField("أدخل إجابتك", text: $name)
                            .multilineTextAlignment(.trailing)
                            .frame(width: 310, height: 36)
                            .background(.white)
                            .shadow(color:.black.opacity(0.25), radius: 2, x: 1, y: 2)
                            .cornerRadius(8.0)
                        
                        Button {
                        } label: {
                            Image("b1")
                                .resizable()
                                .frame(width: 253, height: 58)
                                .overlay(
                                    Text("تحقق")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .bold))
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)))
                        }
                        
                    }.offset(x:0,y:-70)
                    
                }
                
            }
        }
        
        
        
    }
    func storeName() {
        // Perform any logic you want with the name value
        print("Name: \(name)")
        // You can store the name value in a database, make API calls, or perform any other operation
    }
}

#Preview {
    FirstLevel()
}
