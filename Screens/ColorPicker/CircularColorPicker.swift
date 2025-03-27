//
//  CircularColorPicker.swift
//  Screens
//
//  Created by Devis on 27/03/2025.
//

import SwiftUI

struct CircularColorPicker: View {
    
    @State var currentColor: Color = .white
    @State var dragPosition: CGPoint = CGPoint(x: 150, y: 150)
    @State var selectedColor: Color = .white
    
    let circleSize: CGFloat = 300
    
    var body: some View {
        VStack{
            
            HStack(spacing: 2){
                ForEach(0..<11, id: \.self){index in
                        let brightness = Double(index) / 11
                    Rectangle()
                        .fill(currentColor.opacity(brightness))
                        .frame(width: 30, height: 30)
                        .onTapGesture {
                            selectedColor = currentColor.opacity(brightness)
                        }
                }
            }
            
            Rectangle()
                .foregroundStyle(selectedColor)
                .frame(height: 50)
                .cornerRadius(12)
                .padding()
            
            ZStack{
                Canvas{context, size in
                    let rect = CGRect(origin: .zero, size: size)
                    let path = Path(ellipseIn: rect)
                    context.fill(path, with: .conicGradient(Gradient(colors: [.red, .yellow, .green, .cyan, .blue, .purple, .red]), center: CGPoint(x: size.width / 2, y: size.height / 2)))
                }
                .frame(width: circleSize, height: circleSize)
                Circle()
                    .stroke(.white, lineWidth: 2)
                    .background(Circle().fill(currentColor))
                    .frame(width: 40, height: 40)
                    .position(dragPosition)
                    .gesture(
                        DragGesture()
                            .onChanged{value in
                                let center = CGPoint(x: circleSize / 2, y: circleSize / 2)
                                let adjustRadius = (circleSize / 2) - 20
                                let offsetX = value.location.x - center.x
                                let offsetY = value.location.y - center.y
                                let distance = sqrt(offsetX * offsetX + offsetY * offsetY)
                                
                                if distance > adjustRadius{
                                    let scale = adjustRadius / distance
                                    let constrainedX = center.x + offsetX * scale
                                    let constrainedY = center.y + offsetY * scale
                                    dragPosition = CGPoint(x: constrainedX, y: constrainedY)
                                } else{
                                    dragPosition = value.location
                                }
                                
                                currentColor = getColor(at: dragPosition, center: center, radius: adjustRadius)
                                selectedColor = currentColor
                            }
                    )
            }
            .frame(width: circleSize, height: circleSize)

        }
        .padding()
    }
    
    private func getColor(at point: CGPoint, center: CGPoint, radius: CGFloat) -> Color{
        let dx = point.x - center.x
        let dy = point.y - center.y
        var angle = atan2(dy, dx)
        if angle < 0{
            angle += 2 * .pi
        }
        let hue = angle / (2 * .pi)
        let distance = sqrt(dx * dx + dy * dy)
        let saturation = min(distance / radius, 1)
        
        return Color(hue: hue, saturation: saturation, brightness: 1)
    }
}
