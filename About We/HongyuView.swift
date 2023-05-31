//
//  HongyuView.swift
//  About We
//
//  Created by T Krobot on 31/5/23.
//

import SwiftUI

struct HongyuView: View {
    
    @State private var isRotating = 0.0
    
    var body: some View {
        ZStack {
            Color.red
            ZStack {
                Color.orange
                ZStack {
                    Color.yellow
                    ZStack {
                        Color.green
                        ZStack {
                            Color.blue
                            ZStack {
                                Color.purple
                                ZStack {
                                    Color.white
                                    VStack{
                                        Image("fish")
                                            .resizable()
                                            .scaledToFit()
                                            .mask(Circle())
                                            .frame(width:175)
                                            .offset(x: 0,y: 0)
                                            .rotationEffect(.degrees(isRotating))
                                            .onAppear {
                                                withAnimation(.linear(duration: 1)
                                                    .speed(0.1).repeatForever(autoreverses: false)) {
                                                    isRotating = 360.0
                                                }
                                            }
                                            .padding(50)
                                        LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing).mask(Text("Hongyu")
                                            .font(.system(size:65)))
                                    }
                                }
                                .padding(10)
                            }
                            .padding(10)
                        }
                        .padding(10)
                    }
                    .padding(10)
                }
                .padding(10)
            }
            .padding(10)
        }
    }
}

struct HongyuView_Previews: PreviewProvider {
    static var previews: some View {
        HongyuView()
    }
}
