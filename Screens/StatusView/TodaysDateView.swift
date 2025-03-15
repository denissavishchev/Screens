//
//  TodaysDateView.swift
//  Screens
//
//  Created by Devis on 15/03/2025.
//

import SwiftUI

struct TodaysDateView: View {
    var body: some View {
        HStack{
            VStack(spacing: -30){
                HStack{
                    Text("16")
                        .font(.system(size: 60, weight: .regular, design: .rounded))
                        .foregroundColor(.black)
                    Text("H")
                        .font(.system(size: 32, weight: .regular, design: .rounded))
                        .foregroundColor(.black.opacity(0.8))
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("07")
                        .font(.system(size: 60, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .frame(width: 130, height: 130)
            Rectangle()
                .frame(width: 2, height: 120)
                .foregroundColor(.gray)
            VStack(alignment: .leading){
                HStack{
                    Text("SUNDAY")
                        .font(.system(size: 32, weight: .regular, design: .rounded))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "bolt.fill")
                    Text("100%")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                }
                Text("SEPTEMBER 02")
                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 18)
    }
}
