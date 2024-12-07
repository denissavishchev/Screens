//
//  SofaView.swift
//  Screens
//
//  Created by Devis on 07/12/2024.
//

import SwiftUI

struct SofaView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading){
                Image("Sofa")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 140)
                    .foregroundStyle(Color(.steamBrown).opacity(0.2))
                    .padding(12)
                Text("Living\nRoom")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.steamDarkGray)
                    .padding(18)
                VStack(alignment: .leading){
                    Spacer()
                    Text("2/6")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.steamDarkGray)
                    Text("Active devices")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.steamDarkGray)
                }
                .frame(maxHeight: .infinity)
                .padding(18)
            }
            
        }
    }
}
