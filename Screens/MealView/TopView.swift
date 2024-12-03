//
//  TopView.swift
//  Screens
//
//  Created by Devis on 03/12/2024.
//

import SwiftUI

struct TopView: View {
    
    @State private var quantity: Int = 0
        
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Circle()
                        .foregroundColor(.vermilion)
                        .frame(width: 50, height: 50)
                        .overlay{
                            ZStack{
                                Circle()
                                    .stroke(.gray.opacity(0.4), lineWidth: 2)
                                    .frame(width: .infinity, height: 400)
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(.white)
                            }
                        }
                        .shadow(color: .red.opacity(0.5), radius: 12, x: 6, y: 12)
                        .padding(24)
                }
                Spacer()
                HStack{
                    VStack(alignment: .leading){
                        Text("Double Burger")
                            .font(.system(size: 24))
                            .bold()
                            .padding(.bottom, 2)
                        Text("A Double Burger is a classic indulgence that features two juicy beef patties stacked on top of each other, offering a hearty and satisfying bite. Typically, each patty is seasoned to perfection and grilled or seared for a flavorful crust.")
                            .font(.system(size: 14))
                    }
                    VStack{
                        QuantityButton(title: "plus", quantity: $quantity)
                        Text("\(quantity)")
                            .font(.system(size: 24))
                            .bold()
                            .padding(.vertical, 4)
                        QuantityButton(title: "minus", quantity: $quantity)
                    }
                }
                .padding(24)
                .padding(.bottom, 50)
            }
            .frame(maxWidth: .infinity, maxHeight: 400)
            .background(LinearGradient(gradient: Gradient(colors: [.blueGray, .icyWhite.opacity(0.6)]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(24)
            .shadow(color: .gray, radius: 12, x: 20, y: 12)
            .padding(.horizontal, 30)
            
            RoundedRectangle(cornerRadius: 24)
                .stroke(LinearGradient(gradient: Gradient(
                    colors: [.gray, .white.opacity(0.3)]),
                                       startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 2)
                .frame(width: .infinity, height: 400)
                .padding(30)
        }
    }
}


