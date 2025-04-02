//
//  LegendaryView.swift
//  Screens
//
//  Created by Devis on 02/04/2025.
//

import SwiftUI

struct LegendaryView: View {
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 12, bottomLeading: 6, bottomTrailing: 6, topTrailing: 12))
                .frame(width: UIScreen.main.bounds.width - 66, height: 38)
                .foregroundColor(.magicYellow)
                .shadow(color: .black, radius: 4, x: -1)
            HStack{
                Text("Legendary")
                    .font(Font.custom("Planewalker", size: 24))
                    .foregroundColor(.black)
                    .padding(.bottom, 8)
                Spacer()
                Image(systemName: "star.circle.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.goodYellow)
                    .shadow(color: .black, radius: 5)
                    .padding(.bottom, 12)
            }
            .padding(.top, 12)
            .padding(.horizontal, 30)
        }
    }
}
