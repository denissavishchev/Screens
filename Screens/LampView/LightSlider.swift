//
//  LightSlider.swift
//  Screens
//
//  Created by Devis on 06/01/2025.
//

import SwiftUI

struct LightSlider: View {
    
    @Binding var yValue: CGFloat
    var color: Color
    
    var body: some View {
        ZStack(alignment: .bottom){
            RoundedRectangle(cornerRadius: 40)
                .fill(
                    .shadow(.inner(color: .gray.opacity(0.7), radius: 10, x: 8, y: 5))
                )
                .foregroundColor(.ampWhite)
                .frame(width: 80, height: 300)
                .padding(.bottom, 280)
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .overlay(
                        VStack {
                             Text("\(Int(mapValue(input: yValue, inputMin: 150, inputMax: 300, outputMin: 10, outputMax: 100)))%")
                                .foregroundColor(color.opacity(0.6))
                            .bold()
                            .padding(.top, 20)
                            Spacer()
                        }
                    )
                    .padding(4)
                    .foregroundColor(.ampWhite)
                    .frame(width: 80, height: yValue)
                    .padding(.bottom, 280)
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(gradient: Gradient(colors: [color.opacity(0.3), .clear]), startPoint: .top, endPoint: .bottom), lineWidth: 1)
                    .padding(3)
                    .frame(width: 80, height: yValue)
                    .padding(.bottom, 280)
            }
                
            ZStack {
                Circle()
                    .frame(width: 85, height: 85)
                    .shadow(color: .gray.opacity(0.8),radius: 5, x: 5, y: 5)
                    .foregroundColor(.black)
                    .padding(.bottom, 280)
                Circle()
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "power.circle")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.ampWhite)
                    )
                    .foregroundColor(.gray.opacity(0.2))
                    .padding(.bottom, 280)
            }
        }
        .gesture(DragGesture().onChanged{ value in
                let minY: CGFloat = 150
                let maxY: CGFloat = 300
                yValue = min(max(minY, 150 - value.translation.height), maxY)
            })
    }
    
    func mapValue(input: Double, inputMin: Double, inputMax: Double, outputMin: Double, outputMax: Double) -> Double {
        return outputMin + (input - inputMin) * (outputMax - outputMin) / (inputMax - inputMin)
    }
}
