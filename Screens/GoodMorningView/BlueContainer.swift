//
//  BlueContainer.swift
//  Screens
//
//  Created by Devis on 02/01/2025.
//

import SwiftUI

struct BlueContainer: View {
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 50.0,
                bottomLeading: 40.0,
                bottomTrailing: 100.0,
                topTrailing: 40.0),
                                   style: .continuous)
            .frame(maxWidth: .infinity, maxHeight: 150)
            .foregroundColor(.goodBlue)
            VStack(alignment: .leading){
                Text("Good Morning")
                    .font(.system(size: 32))
                    .foregroundStyle(.ampWhite)
                    .bold()
                Text("Welcome to Smart Home")
                    .font(.system(size: 14))
                    .foregroundStyle(.ampWhite.opacity(0.7))
            }
            .frame(maxWidth: .infinity, maxHeight: 120, alignment: .bottomLeading)
            .padding(.leading, 24)
        }
    }
}
