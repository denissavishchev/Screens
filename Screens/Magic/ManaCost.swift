//
//  ManaCost.swift
//  Screens
//
//  Created by Devis on 02/04/2025.
//

import SwiftUI

struct ManaCost: View {
    
    let color: Color
    let image: String
    let qty: String
    
    init(color: Color, image: String = "", qty: String = "") {
            self.color = color
            self.image = image
            self.qty = qty
        }
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 28, height: 28)
                .foregroundColor(color)
                .shadow(color: .black, radius: 2, x: -1, y: 2)
            if image == ""{
                Text(qty)
                    .font(Font.custom("Planewalker", size: 28))
                    .foregroundColor(.black)
                    .bold()
                    .padding(.top, 4)
                    
                } else{
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                }

        }
    }
}
