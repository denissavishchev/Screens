//
//  PrinceView.swift
//  Screens
//
//  Created by Devis on 20/03/2025.
//

import SwiftUI

struct PrinceView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            ZStack {
                CircleContaimer()
                    .stroke(LinearGradient(colors: [.droneYellow.opacity(0.8), .icyWhite], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                    
                    .shadow(color: .ampWhite, radius: 10, x: 0)
                ForEach([4, 5, 6], id: \.self) { i in
                    let angle = Double(i) / Double(13) * 2 * .pi + .pi
                    let radius: CGFloat = 60
                    
                    Image(systemName: "star.fill")
                        .font(.system(size: CGFloat(45 - (i * 5))))
                        .frame(width: 10, height: 10)
                        .foregroundColor(.black)
                        .overlay(
                            Image(systemName: "star.fill")
                                .font(.system(size: CGFloat(43 - (i * 5))))
                                .foregroundColor(.yellow)
                        )
                        .offset(
                            x: radius * cos(angle) + i,
                            y: radius * sin(angle)
                        )
                        .shadow(color: .icyWhite, radius: 2)
                }
                Text("9.2")
                    .font(.system(size: 44, weight: .bold, design: .rounded))
                    .foregroundColor(.icyWhite)
                    .shadow(color: .icyWhite, radius: 5)
            }
            .frame(width: 130, height: 130)
            .offset(y: -10)
            GameContainer()
                .foregroundStyle(LinearGradient(colors: [.droneYellow.opacity(0.55), .princeBlue], startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: .icyWhite.opacity(0.3), radius: 10, x: 5, y: 5)
            HStack {
                Spacer()
                Image("Prince")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .shadow(color: .black, radius: 10, x: 5, y: 5)
            }
            VStack{
                Spacer()
                HStack {
                    Image("PrinceLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 190)
                        .shadow(color: .icyGray, radius: 10, x: 5)
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 140, height: 50)
                            .foregroundStyle(LinearGradient(colors: [.princeBlue.opacity(0.6), .princeGray.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .shadow(color: .icyWhite.opacity(0.5), radius: 10, x: 5, y: 5)
                        
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 1)
                            .frame(width: 140, height: 50)
                            .foregroundStyle(LinearGradient(colors: [.white.opacity(0.6), .icyWhite.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        Text("Get it now!")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(.icyWhite)
                            .shadow(color: .icyWhite, radius: 10)
                    }
                    .padding(.horizontal, 4)
                }
            }
            .frame(height: 280)
            .padding(.leading, 12)
            VStack {
                Spacer()
                Text("The Sands of Time are a terrible, primordial substance that changes and corrupts every living thing it touches")
                    .foregroundColor(.icyWhite)
                    .bold()
                    .shadow(color: .black, radius: 10, x: 5, y: 5)
                    .padding(.leading, 12)
                    .padding(.bottom, 80)
            }
            
            HStack {
                Spacer()
                VStack(spacing: 4){
                    Text("Reviews 3.4K")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(.icyWhite)
                        .bold()
                        .shadow(color: .black, radius: 10, x: 5, y: 5)
                    HStack(spacing: 4){
                        ForEach(1...5, id: \.self){_ in
                             Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 14, height: 14)
                                .foregroundColor(.goodYellow)
                                .shadow(color: .icyWhite.opacity(0.3), radius: 5, x: 2, y: 2)
                        }
                    }
                }
            }
            .padding(.top, 20)
            .padding(.trailing, 12)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .padding(.horizontal, 12)
    }
}

