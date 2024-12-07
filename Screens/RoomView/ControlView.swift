//
//  ControlView.swift
//  Screens
//
//  Created by Devis on 07/12/2024.
//

import SwiftUI

struct ControlView: View {
    
    @State private var isAir: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                ZStack(alignment: isAir ? .top : .bottom){
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.white)
                        .frame(width: 54, height: 84)
                    Circle()
                        .fill(.blue)
                        .frame(width: 44)
                        .padding(.vertical, 4)
                }
                .onTapGesture {
                    withAnimation{
                        isAir.toggle()
                    }
                }
                Circle()
                    .frame(height: 84)
            }
            HStack{
                Circle()
                    .frame(height: 54)
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 90, height: 54)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
    }
}
