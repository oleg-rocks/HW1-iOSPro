//
//  ModalView.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 19.09.2024.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        ZStack {
            Color.blue
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                Capsule()
                    .frame(width: 50, height: 5)
                    .foregroundColor(.black)
                    .opacity(0.7)
                    .padding(.top, 10)
                
                Spacer()
                
                Text("Modal View")
                
                Spacer()
            }
        }
    }
}
