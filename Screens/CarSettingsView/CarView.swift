//
//  CarView.swift
//  Screens
//
//  Created by Devis on 09/12/2024.
//

import SwiftUI

struct CarView: View {
    var body: some View {
        HStack{
            Image(systemName: "fuelpump.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .foregroundColor(.steamWhite)
            VStack(alignment: .leading, spacing: 0){
                Text("290km")
                    .font(.system(size: 20))
                    .foregroundColor(.steamWhite)
                ProgressView(value: 0.7)
                    .accentColor(.steamWhite)
                    .background(.steamDarkGray)
                Text("70%")
                    .font(.system(size: 20))
                    .foregroundColor(.steamWhite)
            }
            .padding(.horizontal, 4)
            Image("Car")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
        }
        .padding(.horizontal, 18)
    }
}
