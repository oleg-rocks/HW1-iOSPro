//
//  UIKitLabel.swift
//  HW1_Kirsanov
//
//  Created by Oleg Kirsanov on 19.09.2024.
//

import UIKit
import SwiftUI

struct UIKitLabel: UIViewRepresentable {
    private(set) var preferredMaxLayoutWidth: CGFloat = 0
    
    func makeUIView(context: UIViewRepresentableContext<UIKitLabel>) -> UILabel {
        let label = UILabel()
        label.text = "UIKit Label"
        label.numberOfLines = 1
        label.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        label.textAlignment = .center
        label.backgroundColor = UIColor.green
        label.textColor = UIColor.black
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<UIKitLabel>) {
        uiView.preferredMaxLayoutWidth = preferredMaxLayoutWidth
    }
}
