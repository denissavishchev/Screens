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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    struct Config{
        var title: String
        var foregroundColor: Color
        var background: Color
        var symbolImage: String?
        var hPadding: CGFloat = 15
        var vPadding: CGFloat = 10
    }
    
}

#Preview {
    ButtonsView()
}
