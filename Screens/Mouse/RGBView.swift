//
//  RGBView.swift
//  Screens
//
//  Created by Devis on 06/04/2025.
//

import SwiftUI

struct RGBView: View {
    
    private let colors: [Color] = [.purple, .indigo, .blue, .cyan, .teal, .green, .yellow, .orange, .red]
    
    
    var body: some View {
        ZStack{
            TrapezoidShape()
                .fill(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
            
            TrapezoidShape()
                .stroke(lineWidth: 5)
                .fill(.black)
            TrapezoidShape()
                .fill(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
                .blur(radius: 3)
                .offset(x: 0, y: 0)
            RGBShape()
                .fill(.bikeGray)
                .overlay{
                    VStack(spacing: 0){
                        Text("RGB")
                            .font(.system(size: 12, weight: .bold, design: .rounded))
                        Text("   Led")
                            .font(.system(size: 8, weight: .bold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .offset(x: -2, y: -115)
                }
                .offset(x: 1, y: -5)
            RGBShape()
                .stroke(lineWidth: 2)
                .fill(.black)
                .offset(x: 1, y: -5)
            
        }
        .frame(width: 50, height: 260)
        .offset(x: -145, y: -120)
    }
}
