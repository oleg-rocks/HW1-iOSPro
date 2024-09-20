//
//  SecondView.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 18.09.2024.
//

import SwiftUI

enum ListItem: String, CaseIterable {
    case goodWife = "Good Wife"
    case suits = "The Suits"
    case beginning = "The Beginning"
    case attackOnTitans = "Attack On Titans"
    case haykuu = "Haykuu!!"
}

struct SecondView: View {
    @EnvironmentObject var appState: AppState
    @State private var selectedItemToNavigate: ListItem? = nil
    let items: [ListItem] = ListItem.allCases
    
    var body: some View {
        NavigationStack {
            List(items, id: \.self) { item in
                NavigationLink(value: item) {
                    Text(item.rawValue)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Second")
            .navigationDestination(for: ListItem.self) { selectedItem in
                ListItemDetailsView(title: selectedItem.rawValue)
            }
            .onAppear {
                if let item = appState.selectedListItem {
                    DispatchQueue.main.async {
                        selectedItemToNavigate = item
                        appState.selectedListItem = nil
                    }
                }
            }
        }
    }
}
