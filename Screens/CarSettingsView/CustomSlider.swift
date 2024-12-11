//
//  CustomSlider.swift
//  Screens
//
//  Created by Devis on 11/12/2024.
//

import SwiftUI

struct CustomSlider: View {
    
    let image: String
    let value: Int

    @State var offset: CGFloat = 60
        
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                Capsule()
                .fill(.gray.opacity(0.3))
                    .frame(height: 60)
                Capsule()
                    .fill(.white)
                    .frame(width: offset + 15, height: 60)
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .padding(.horizontal, 5)
                ZStack{
                    RoundedRectangle(cornerRadius: 6)
                        .fill(.orange)
                        .frame(width: 20, height: 15)
                        .background(RoundedRectangle(cornerRadius: 6).stroke(.white, lineWidth: 2))
                    Image(systemName: "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                    }
                    .offset(x: offset)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6)){
                                if value.location.x > 75 && value.location.x <= UIScreen.main.bounds.width - 35{
                                    offset = value.location.x - 20
                                }
                            }
                        }))
            Text("\(value + Int(offset))")
                .font(.system(size: 16))
                .foregroundColor(offset > UIScreen.main.bounds.width - 110 ? .black : .white)
                .bold()
                .offset(x: offset > UIScreen.main.bounds.width - 110 ? offset - 50 : offset + 30)
        }
        .padding(.horizontal, 20)
    }
}
