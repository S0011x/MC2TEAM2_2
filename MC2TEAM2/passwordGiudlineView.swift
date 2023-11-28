//
//  passwordGiudlineView.swift
//  MC2TEAM2
//
//  Created by Shahad Alhothali on 14/05/1445 AH.
//

import SwiftUI

struct passwordGuidlineView: View {
    let texts = ["هناك معايير يجب اخذها بعين الإعتبار عند إنشاء كلمة  مرور قوية .لاتكتب معلوماتك الشخصية مثل اسمك وعمرك .يجب أن تحتوي  على الأقل حرف كبير حرف صغير ورمز .لاتحتوي على ارقام متسلسلة .يجب أن يكون سهل عليك تذكره صعب على الآخرين تذكرة","sconed tex"]
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
        VStack {
                Text(" معايير كلمة المرور")
                    .font(
                        Font.custom("Inter", size: 32)
                            .weight(.semibold))
                    .padding(.top, 40)
                    .padding(.bottom, -50)
                TabView {
                    ForEach(texts, id: \.self) { text in
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 330, height: 600)
                            .background(Color(red: 0.67, green: 0.87, blue: 0.78))
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 1, y: 2)
                            .overlay(
                                Text(text)
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .multilineTextAlignment(.center)
                                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                                    .padding()
                                
                            )
                            .tag(text)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        }
    }
}
#Preview {

}

