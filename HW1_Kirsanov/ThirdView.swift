//
//  ThirdView.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 18.09.2024.
//

import SwiftUI

struct ThirdView: View {
    @State private var isPresented = false
    
    var body: some View {
        ZStack {
            Color.indigo
                .opacity(0.2)
                .ignoresSafeArea()
            
            HWButton(text: "Open View Modally") {
                isPresented.toggle()
            }
            .popover(isPresented: $isPresented) {
                ModalView()
            }
        }
    }
}
