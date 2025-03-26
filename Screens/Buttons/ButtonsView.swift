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
                ZStack{
                    Heart()
                        .stroke(.white, style: StrokeStyle(lineWidth: 3))
                        .phaseAnimator([1, 0]){fire, draw in
                            ZStack{
                                fire
                                Heart()
                                    .trim(from: 0, to: draw)
                                    
                            }
                        }
                        animation: {draw in
                                .easeInOut(duration: 1)
                        }
                        .frame(width: 60, height: 50)
                }
                SnakeButton()
                    .padding(.top, 50)
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

struct Heart: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: width / 2, y: height))
        
        path.addCurve(to: CGPoint(x: 0, y: height / 3),
                      control1: CGPoint(x: width / 2, y: height / 1.5),
                      control2: CGPoint(x: 0, y: height / 2))
        
        path.addArc(center: CGPoint(x: width / 4, y: height / 4),
                    radius: width / 4,
                    startAngle: .degrees(180),
                    endAngle: .degrees(0),
                    clockwise: false)
        
        path.addArc(center: CGPoint(x: 3 * width / 4, y: height / 4),
                    radius: width / 4,
                    startAngle: .degrees(180),
                    endAngle: .degrees(0),
                    clockwise: false)
        
        path.addCurve(to: CGPoint(x: width / 2, y: height),
                      control1: CGPoint(x: width, y: height / 2),
                      control2: CGPoint(x: width / 2, y: height / 1.5))
        
        return path
    }
}
