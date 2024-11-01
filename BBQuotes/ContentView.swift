//
//  ContentView.swift
//  BBQuotes
//
//  Created by Bugrahan on 31.10.2024.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            Text("Breaking Bad")
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label("Breaking Bad", systemImage: "tortoise")
                }
            
            Text("Better Call Soul")
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label("Better Call Soul", systemImage: "briefcase")
                }
        }
        .preferredColorScheme(.dark)
        
    }
}

//#Preview {
//    ContentView()
//}
