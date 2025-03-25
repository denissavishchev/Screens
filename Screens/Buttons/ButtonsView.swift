//
//  ButtonsView.swift
//  Screens
//
//  Created by Devis on 23/03/2025.
//

import SwiftUI

enum TransactionState: String{
    case idle = "Click to pay"
    case analyzing = "Analyzing Transaction"
    case processing = "Processing Transaction"
    case completed = "Transaction Complete"
    case failed = "Transaction Failed"
    
    var color: Color{
        switch self {
        case .idle:
            return .black
        case .analyzing:
            return .blue
        case .processing:
            return .mint
        case .completed:
            return .green
        case .failed:
            return .red
        }
    }
    
    var image: String?{
        switch self {
        case .idle: "apple.logo"
        case .analyzing: nil
        case .processing: nil
        case .completed: "checkmark.circle.fill"
        case .failed: "xmark.circle.fill"
        }
    }
}

struct ButtonsView: View {
    
    @State private var transactionState: TransactionState = .idle
    
    var body: some View {
        NavigationStack{
            VStack{
                let config = AnimatedButton.Config(
                    title: transactionState.rawValue,
                    foregroundColor: .white,
                    background: transactionState.color,
                    symbolImage: transactionState.image
                )
                SnakeButton()
                LazySwitch()
                    .padding(.top, 50)
                AnimatedButton(config: config){
                    transactionState = .analyzing
                    try? await Task.sleep(for: .seconds(3))
                    transactionState = .processing
                    try? await Task.sleep(for: .seconds(3))
                    transactionState = .failed
                    try? await Task.sleep(for: .seconds(1))
                    transactionState = .idle
                }
                .animation(.easeInOut(duration: 0.25), value: transactionState)
                .padding(.top, 50)
                
            }
            .navigationTitle("Custom Button")
        }
    }
}

#Preview {
    ButtonsView()
}



