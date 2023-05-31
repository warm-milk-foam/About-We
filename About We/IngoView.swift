//
//  IngoView.swift
//  About We
//
//  Created by T Krobot on 31/5/23.
//

import SwiftUI

struct IngoView: View {
    
    @State private var isRotating = 0.0
    
    var body: some View {
        VStack{
            Text("Human bean details:")
            HStack{
                Image("hehe")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .cornerRadius(69)
                Text("Hi there my name is Ingo")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                    .underline()
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            .padding()
            .background(.green)
            HStack{
                Text("Roles: ⚪️bobolord  🔵Fake yjsoon 🟡Grumpy old troll 🔴Class of 2023")
                    .bold()
                    .multilineTextAlignment(.center)
                    
            }
            Text("Description:")
                .multilineTextAlignment(.center)
            Text("What was a great king of the largest army in the Orion Arm was devolved into a shell of his former self. His thirst for more wealth in information inside and beyond the universe led him to an unfortunate truth, and he has never stayed the same. Some say that he's saying the truth, but I desire that's not the case...")
                .multilineTextAlignment(.center
                )
                .padding()
                .background(LinearGradient(colors: [.red, .blue, .yellow], startPoint: .leading, endPoint: .trailing))
            Text("YOU🤭ARE🤭DIEEEE🤭")
                .offset(x:0, y: -250)
                .font(.largeTitle)
                .rotationEffect(.degrees(isRotating))
                .onAppear {
                    withAnimation(.linear(duration: 1.0).speed(0.3).repeatForever(autoreverses: false)) {
                        isRotating = 360.0
                    }
                }
                
            
        }
    }
}
struct IngoView_Previews: PreviewProvider {
    static var previews: some View {
        IngoView()
            .preferredColorScheme(.dark)
    }
}
