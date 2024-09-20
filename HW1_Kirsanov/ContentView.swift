//
//  ContentView.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 18.09.2024.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var selectedTab: Int = 0
    @Published var selectedListItem: ListItem? = nil
}

struct ContentView: View {
    @StateObject var appState = AppState()
    
    var body: some View {
        TabView(selection: $appState.selectedTab) {
            FirstView()
                .tabItem {
                    Label("First", systemImage: "house.fill")
                }
                .tag(0)
            
            SecondView()
                .tabItem {
                    Label("Second", systemImage: "gear")
                }
                .tag(1)
            
            ThirdView()
                .tabItem {
                    Label("Third", systemImage: "person.fill")
                }
                .tag(2)
        }
        .environmentObject(appState)
    }
}

#Preview {
    ContentView()
}
