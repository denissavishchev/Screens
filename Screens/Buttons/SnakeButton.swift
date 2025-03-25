//
//  SnakeButton.swift
//  Screens
//
//  Created by Devis on 25/03/2025.
//

import SwiftUI

struct SnakeButton: View {
    
    @State private var isMoovingAround = false
    
    var body: some View {
        ZStack{
            Button{
                
            }label: {
                ZStack {
                    Capsule()
                        .frame(width: 160, height: 54)
                        .foregroundStyle(.indigo.gradient)
                    Capsule()
                        .strokeBorder(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round, dash: [40, 400], dashPhase: isMoovingAround ? 220 : -220))
                        .frame(width: 160, height: 54)
                        .foregroundStyle(LinearGradient(colors: [.white, .mint, .orange, .green], startPoint: .trailing, endPoint: .leading))
                        .shadow(radius: 2)
                    HStack{
                        Text("Get Started")
                        Image(systemName: "arrow.right")
                    }
                    .bold()
                }
            }
            .buttonStyle(.plain)
        }
        .onAppear{
            withAnimation(.linear.speed(0.1).repeatForever(autoreverses: false)){
                isMoovingAround.toggle()
            }
        }
    }
}

