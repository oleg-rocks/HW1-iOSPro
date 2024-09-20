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
//    var selectedItem: ListItem?
    let items: [ListItem] = ListItem.allCases
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                NavigationLink(
                    destination: ListItemDetailsView(title: item.rawValue),
                    tag: item,
                    selection: $selectedItemToNavigate
                ) {
                    Text(item.rawValue)
                }
            }
            .navigationTitle("Second")
            .onAppear {
                if let item = appState.selectedListItem {
                    DispatchQueue.main.async {
                        selectedItemToNavigate = item
                    }
                }
            }
        }
    }
}
