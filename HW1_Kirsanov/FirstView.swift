//
//  FirstView.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 18.09.2024.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            HWButton(text: "Open some item from Second") {
                appState.selectedTab = 1
                appState.selectedListItem = .suits
            }
            .padding(.bottom, 100)
            
            UIKitLabel(preferredMaxLayoutWidth: UIScreen.main.bounds.width)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                .padding(.horizontal, 100)
        }
        .frame(maxHeight: .infinity, alignment: .center)
    }
}
