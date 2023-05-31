//
//  ContentView.swift
//  About We
//
//  Created by T Krobot on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ThetPaiView()
                .tabItem(){
                    Label("Thet Pai", systemImage: "person")
                }
            IngoView()
                .tabItem(){
                    Label("Ingo", systemImage: "person")
                }
            HongyuView()
                .tabItem(){
                    Label("Hongyu", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
