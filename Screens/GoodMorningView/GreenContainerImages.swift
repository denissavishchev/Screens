//
//  GreenContainerImagesView.swift
//  Screens
//
//  Created by Devis on 02/01/2025.
//

import SwiftUI

struct GreenContainerImages: View {
    var body: some View {
        VStack(spacing: 2.5){
            Image("Cat")
                .resizable()
                .scaledToFit()
                .background(.goodGray)
                .clipShape(Circle())
                .frame(width: 80)
                .overlay(
                    Circle()
                        .stroke(.black, lineWidth: 2)
                )
                .padding(.top, 68)
            Circle()
                .background(.black)
                .clipShape(Circle())
                .frame(width: 80)
                .overlay(
                    ZStack{
                        Circle()
                            .stroke(.goodGreen, lineWidth: 3)
                        Image(systemName: "power")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.goodGreen)
                    }
                )
        }
    }
}

