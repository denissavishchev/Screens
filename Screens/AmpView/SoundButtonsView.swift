//
//  SoundButtonsView.swift
//  Screens
//
//  Created by Devis on 26/12/2024.
//

import SwiftUI

struct SoundButtonsView: View {
    
    let names: [String] = ["OD", "DLY", "EQ"]
    @State private var states: [String: Bool] = ["OD": true, "DLY": false, "EQ": false]
    
    var body: some View {
        HStack(spacing: 40){
            ForEach(names, id: \.self){name in
                SoundButton(name: name, isOn: Binding(
                    get: { states[name, default: false] },
                    set: { states[name] = $0 }
                ) )
            }
        }
    }
}

struct SoundButton: View {
    
    var name: String
    @Binding var isOn: Bool
    
    var body: some View {
        ZStack{
            Capsule()
                .fill(LinearGradient(colors: [.ampDarkWhite, .ampDark], startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: .ampDarkGray, radius: 5, y: 5)
                .shadow(color: .white.opacity(0.8), radius: 5, y: -5)
                .overlay(
                    ZStack{
                        Capsule()
                            .stroke(LinearGradient(colors: [.gray.opacity(0.6), .clear], startPoint: .top, endPoint: .bottom), lineWidth: 1.5)
                        Capsule()
                            .stroke(LinearGradient(colors: [.clear, .white.opacity(0.8)], startPoint: .top, endPoint: .bottom), lineWidth: 1.5)
                    }
                )
                .frame(width: 65, height: 120)
            Capsule()
                .fill(LinearGradient(colors: [.ampWhite, .ampGray], startPoint: .top, endPoint: .bottom)
                    .shadow(.inner(color: .ampDark.opacity(0.7), radius: 5, x: 5, y: 5))
                    .shadow(.inner(color: .ampWhite.opacity(0.9), radius: 5, x: -5, y: -5))
                )
                .shadow(color: isOn ? .white.opacity(0.8) : .black.opacity(0.2), radius: 2, y: isOn ? -3 : 5)
                .overlay(
                    ZStack{
                        Capsule()
                            .stroke(LinearGradient(colors: [.clear, .white.opacity(0.4)], startPoint: .top, endPoint: .bottom), lineWidth: 1.5)
                        Capsule()
                            .stroke(LinearGradient(colors: [.ampWhite.opacity(0.8), .clear], startPoint: .top, endPoint: .bottom), lineWidth: 1.5)
                    }
                )
                .frame(width: 45, height: 100)
            VStack(spacing: 5){
                Text(name)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray.opacity(0.8))
                    .padding(0)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 35, height: 2)
                    .foregroundColor(.gray.opacity(0.8))
                    .padding(.bottom, 12)
                    .padding(.top, 8)
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundColor(isOn ? .ampGreen : .ampWhite.opacity(0.8))
                    .shadow(color: .white, radius: 3)
            }
            .frame(width: 65, height: 100)
        }
        .onTapGesture {
            withAnimation{
                isOn.toggle()
            }
        }
        .padding(.vertical, 12)
    }
}

