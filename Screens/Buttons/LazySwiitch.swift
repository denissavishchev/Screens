//
//  LazySwiitch.swift
//  Screens
//
//  Created by Devis on 24/03/2025.
//

import SwiftUI

struct LazySwitch: View {
    
    @State var isOn: Bool = false
    @State var isStretched: Bool = false
    
    var body: some View {
        ZStack{
           Capsule()
                .frame(width: isStretched ? 144 : 54, height: 54)
                .foregroundColor(.white)
                .padding(.horizontal, 3)
                .onTapGesture {
                    isOn.toggle()
                    isStretched.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isStretched.toggle()
                        }
                    }
                }
                
        }
        .frame(width: 150, height: 60, alignment: isOn ? .trailing : .leading)
        .background(.black)
        .clipShape(Capsule())
        .animation(.easeInOut(duration: 0.5), value: isOn)
    }
}
