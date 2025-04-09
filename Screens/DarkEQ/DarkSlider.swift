//
//  DarkSlider.swift
//  Screens
//
//  Created by Devis on 09/04/2025.
//

import SwiftUI

struct DarkSlider: View {
    
    private let height: CGFloat = 280
    private let width: CGFloat = 16
    @Binding var yValue: CGFloat
    var name: String
    
    var body: some View {
        HStack {
            VStack(spacing: 27){
                ForEach(1...9, id: \.self){_ in
                        RoundedRectangle(cornerRadius: 2)
                        .frame(width: 10, height: 2)
                        .foregroundColor(.eqGray)
                }
            }
            VStack(spacing: 20){
                ZStack(alignment: .bottom) {
                    Capsule()
                        .fill(LinearGradient(colors: [.black.opacity(0.4), .eqGray], startPoint: .top, endPoint: .bottom)
                            .shadow(.inner(color: .black, radius: 3, x: 2, y: 2))
                        )
                        .frame(width: width, height: height)
                        .shadow(color: .black, radius: 5, x: 5)
                        .shadow(color: .white.opacity(0.1), radius: 3, x: -3)
                    Capsule()
                        .stroke(lineWidth: 1)
                        .fill(LinearGradient(colors: [.eqGray.opacity(0.7), .white.opacity(0.2)], startPoint: .top, endPoint: .bottom))
                        .frame(width: width, height: height)
                        
                    
                    Capsule()
                        .fill(LinearGradient(colors: [.eqGray.opacity(0.6), .eqGray.opacity(0.6), .black], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: width * 2, height: width * 3)
                        .shadow(color: .black, radius: 2, x: 1, y: -1)
                        .shadow(color: .ampBlue.opacity(0.5), radius: 2)
                        .overlay(
                            ZStack {
                                Capsule()
                                    .foregroundStyle(LinearGradient(colors: [.black.opacity(0.6), .eqGray], startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(width: width * 1.4, height: width * 2)
                                Capsule()
                                    .stroke(LinearGradient(colors: [.black, .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1)
                                    .frame(width: width * 1.4, height: width * 2)
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.ampBlue)
                                    .frame(width: 14, height: 4)
                                    .shadow(color: .ampBlue, radius: 3)
                            }
                        )
                        .offset(y: yValue)
                        .gesture(
                            DragGesture().onChanged { value in
                                let minY: CGFloat = 0
                                let maxY: CGFloat = height - (width * 3)
                                yValue = -(min(max(minY, -value.location.y), maxY))
                            }
                        )
                }
                Text(name)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white.opacity(0.6))
            }
        }
    }
}
