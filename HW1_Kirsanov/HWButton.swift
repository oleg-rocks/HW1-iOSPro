//
//  HWButton.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 19.09.2024.
//

import SwiftUI

struct HWButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
        }
        .foregroundColor(.white)
        .padding(16)
        .background(.black)
        .cornerRadius(8)
    }
}
