//
//  SettingSwitch.swift
//  Screens
//
//  Created by Devis on 26/12/2024.
//

import SwiftUI

struct SettingSwitch: View {
    
    var name: String
    @Binding var isOn: Bool
    
    var body: some View {
        VStack{
            HStack{
                Text("\(name):")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                Text(isOn ? "on" : "off")
                    .font(.system(size: 16))
                    .foregroundColor(.gray.opacity(0.8))
            }
            ZStack(alignment: isOn ? .trailing : .leading){
                RoundedRectangle(cornerRadius: 30)
                    .fill(LinearGradient(gradient: Gradient(colors: [.ampWhite, .ampDarkGray]), startPoint: .topLeading, endPoint: .bottom)
                        .shadow(.inner(color: .ampWhite, radius: 1, x: -1, y: -1))
                        .shadow(.inner(color: .gray, radius: 1, x: 1, y: 1))
                    )
                    .shadow(color: .ampWhite, radius: 4, y: -4)
                    .shadow(color: .gray.opacity(0.7), radius: 4, y: 4)
                    .frame(width: 90, height: 40)
                    Group{
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.ampDarkGray, .ampWhite]), startPoint: .topLeading, endPoint: .bottom))
                            .shadow(color: .gray.opacity(0.7), radius: 3, y: 3)
                            .shadow(color: .ampWhite.opacity(0.7), radius: 3, y: -3)
                            .frame(width: 32, height: 32)
                        Circle()
                            .stroke(Gradient(colors: [.ampWhite, .clear]),lineWidth: 1)
                            .frame(width: 32, height: 32)
                        Circle()
                            .stroke(Gradient(colors: [.clear, .gray.opacity(0.7)]),lineWidth: 1)
                            .overlay(
                                Circle()
                                    .foregroundColor(isOn ? .ampGreen: .ampWhite)
                                    .shadow(color: .white, radius: 3)
                                    .frame(width: 12, height: 12)
                            )
                            .frame(width: 32, height: 32)
                    }
                    .padding(.horizontal, 6)
            }
            .onTapGesture {
                withAnimation{
                    isOn.toggle()
                }
            }
        }
    }
}
