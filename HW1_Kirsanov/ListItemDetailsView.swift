//
//  SomeView.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 18.09.2024.
//

import SwiftUI

struct ListItemDetailsView: View {
    let title: String
    
    var body: some View {
        ZStack {
            Color.blue
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                Text("Details about the movie - \(title)")
                    .padding()
            }
        }
    }
}
