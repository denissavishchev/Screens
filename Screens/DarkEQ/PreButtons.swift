//
//  PreButtons.swift
//  Screens
//
//  Created by Devis on 10/04/2025.
//

import SwiftUI

struct PreButton: View {
    
     var index: Int
     var name: String
     var tl: CGFloat
     var bl: CGFloat
     var bt: CGFloat
     var tt: CGFloat
    
    @Binding var selectedButton: Int
    
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: tl, bottomLeading: bl, bottomTrailing: bt, topTrailing: tt))
                .fill(
                    .shadow(.inner(color: selectedButton == index ? .black : .clear, radius: 2, x: 2))
                    .shadow(.inner(color: selectedButton == index ? .black : .clear, radius: 2, x: -2))
                )
                .foregroundStyle(LinearGradient(colors: [.eqGray, .black.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 100, height: 40)
                .shadow(color: selectedButton == index ? .clear : .white.opacity(0.2), radius: 3, x: -2, y: -1)
                .shadow(color: .black, radius: 5, x: 3, y: 3)
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: tl, bottomLeading: bl, bottomTrailing: bt, topTrailing: tt))
                .stroke(lineWidth: 1)
                .frame(width: 100, height: 40)
                .foregroundStyle(LinearGradient(colors: [.black.opacity(0.5), .black], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text(name)
                .font(.system(size: 14, weight: .bold, design: .rounded))
                .foregroundColor(selectedButton == index ? .ampBlue : .white.opacity(0.6))
        }
        .offset(y: selectedButton == index ? 2.5 : 0)
        .onTapGesture {
            withAnimation{
                selectedButton = index
            }
        }
    }
}
