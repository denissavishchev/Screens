//
//  QuantityButton.swift
//  Screens
//
//  Created by Devis on 03/12/2024.
//

import SwiftUI

struct QuantityButton: View {
    
    let title: String
    @Binding var quantity: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                .blueGray
                    .shadow(.inner(color: .gray.opacity(0.9), radius: 5, x: 5, y: 5))
                    .shadow(.inner(color: .gray.opacity(0.7), radius: 5, x: -5, y: -5))
            )
            .stroke(.black.opacity(0.3), lineWidth: 1)
            .frame(width: 40, height: 40)
            .overlay(
                Image(systemName: title)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            )
            .onTapGesture {
                withAnimation{
                    if title == "plus" {
                        quantity += 1
                    } else if title == "minus" {
                        quantity = max(0, quantity - 1)
                    }
                }
            }
    }
   
}

