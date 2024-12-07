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
                    .foregroundStyle(Color(.systemGray2).opacity(0.3))
                    .padding(12)
                Text("Living\nRoom")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.black.opacity(0.6))
                    .padding(18)
                VStack(alignment: .leading){
                    Spacer()
                    Text("2/6")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.black.opacity(0.6))
                    Text("Active devices")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.black.opacity(0.6))
                }
                .frame(maxHeight: .infinity)
                .padding(18)
            }
            
        }
    }
}
