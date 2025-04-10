//
//  SlidersView.swift
//  Screens
//
//  Created by Devis on 09/04/2025.
//

import SwiftUI

struct SlidersView: View {
    
    @AppStorage("low") private var low: Double = -30
    @AppStorage("mid") private var mid: Double = -30
    @AppStorage("high") private var high: Double = -30
    
    var body: some View {
        HStack(spacing: 30){
            VStack(spacing: 95){
                Text("+15db")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.eqGray)
                Text("0db")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.eqGray)
                Text("-15db")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.eqGray)
            }
            DarkSlider(yValue: $low, name: "Low")
            DarkSlider(yValue: $mid, name: "Mid")
            DarkSlider(yValue: $high, name: "High")
        }
    }
}
