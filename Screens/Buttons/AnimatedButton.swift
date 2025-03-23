//
//  AnimatedButton.swift
//  Screens
//
//  Created by Devis on 23/03/2025.
//

import SwiftUI

struct AnimatedButton: View {
    
    var config: Config
    var onTap: () async -> ()
    @State private var isLoading: Bool = false
    
    var body: some View {
        Button{
            Task{
                isLoading = true
                await onTap()
                isLoading = false
            }
                
        }label:{
            HStack(spacing: 10){
                if let symbolImage = config.symbolImage{
                    Image(systemName: symbolImage)
                        .font(.title3)
                        .transition(.blurReplace)
                }
                if isLoading{
                    Spinner(tint: config.foregroundColor, lineWidth: 4)
                        .frame(width: 20, height: 20)
                        .transition(.blurReplace)
                }
                Text(config.title)
                    .contentTransition(.interpolate)
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, config.hPadding)
            .padding(.vertical, config.vPadding)
            .foregroundStyle(config.foregroundColor)
            .background(config.background.gradient)
            .clipShape(config.shape)
            .contentShape(config.shape)
        }
        .disabled(isLoading)
        .buttonStyle(ScaleButtonStyle())
    }
    
    struct Config{
        var title: String
        var foregroundColor: Color
        var background: Color
        var symbolImage: String?
        var hPadding: CGFloat = 15
        var vPadding: CGFloat = 10
        var shape: AnyShape = .init(.capsule)
    }
    
}

fileprivate struct ScaleButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .animation(.linear(duration: 0.2)){
                $0
                    .scaleEffect(configuration.isPressed ? 0.9 : 1)
            }
    }
}

#Preview {
    ButtonsView()
}
