//
//  CircularWatchView.swift
//  Screens
//
//  Created by Devis on 15/03/2025.
//

import SwiftUI

struct CircularWatchView: View {
    
    @StateObject var svm: StatusViewModel
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 300, height: 300)
                .foregroundStyle(LinearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(.gray.opacity(0.3), lineWidth: 1)
                .frame(width: 300, height: 300)
            ForEach(0..<12, id: \.self) { i in
                let angle = Double(i) / Double(12) * 2 * .pi
                let radius: CGFloat = 130
                
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.black)
                    .offset(
                        x: radius * cos(angle),
                        y: radius * sin(angle)
                    )
            }
            ForEach(0...60, id: \.self) { i in
                let angle = Double(i) / Double(60) * 2 * .pi
                let radius: CGFloat = 115
                
                ZStack {
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(i < svm.seconds + 1 ? .turco : .gray.opacity(0.1))
                        .offset(
                            x: radius * cos(angle - .pi / 2),
                            y: radius * sin(angle - .pi / 2)
                        )
                    Circle()
                        .stroke(i < svm.seconds + 1 ? .black : .black.opacity(0.3), lineWidth: 0.5)
                        .frame(width: 6, height: 6)
                        .offset(
                            x: radius * cos(angle - .pi / 2),
                            y: radius * sin(angle - .pi / 2)
                        )
                }
            }
            Circle()
                .frame(width: 215, height: 215)
                .foregroundStyle(LinearGradient(colors: [.black.opacity(0.4), .black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(colors: [.gray, .black], startPoint: .top, endPoint: .bottom).opacity(0.3), lineWidth: 2)
                .frame(width: 200, height: 200)
            Circle()
                .frame(width: 180, height: 180)
                .foregroundStyle(LinearGradient(colors: [.black.opacity(0.4), .black], startPoint: .top, endPoint: .bottom))
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(.turco)
            Circle()
                .frame(width: 120, height: 120)
                .foregroundStyle(LinearGradient(colors: [.bikeGray, .black], startPoint: .top, endPoint: .bottom))
                .shadow(color: .black, radius: 3)
            Circle()
                .stroke(.black, lineWidth: 5)
                .frame(width: 100, height: 100)
                .shadow(color: .white.opacity(0.5), radius: 1)
            ForEach(0..<4, id: \.self) { i in
                let angle = Double(i) / Double(4) * 2 * .pi
                let radius: CGFloat = 35
                
                ZStack {
                    Circle()
                        .frame(width: 7, height: 7)
                        .foregroundColor(.turco)
                        .offset(
                            x: radius * cos(angle),
                            y: radius * sin(angle)
                        )
                    Circle()
                        .stroke(.black, lineWidth: 1)
                        .frame(width: 7, height: 7)
                        .offset(
                            x: radius * cos(angle),
                            y: radius * sin(angle)
                        )
                }
            }
            let displayedHours = svm.hours > 12 ? svm.hours - 12 : svm.hours
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 22, height: 70)
                .foregroundColor(.gray)
                .offset(y: -20)
                .rotationEffect(.degrees((displayedHours / 12) * 360))
                .shadow(color: .turco, radius: 2)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 22, height: 120)
                .foregroundColor(.gray)
                .offset(y: -40)
                .rotationEffect(.degrees((svm.minutes / 60) * 360))
                .shadow(color: .black, radius: 2)
            Circle()
                .frame(width: 16, height: 16)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
