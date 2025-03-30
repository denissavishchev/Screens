//
//  RoundedTrapezoid.swift
//  Screens
//
//  Created by Devis on 30/03/2025.
//

import SwiftUI

struct RoundedTrapezoid: Shape {
    let topWidthRatio: CGFloat = 0.6
    let cornerRadius: CGFloat = 10
    let bottomWidthRatio: CGFloat = 1.5
    var bottomCurveHeight: CGFloat = 10

    func path(in rect: CGRect) -> Path {
        let fullWidth = rect.width
        let topWidth = fullWidth * topWidthRatio
        let bottomWidth = fullWidth * bottomWidthRatio
        let height = rect.height
        let topXOffset = (fullWidth - topWidth) / 2
        let bottomXOffset = (fullWidth - bottomWidth) / 2
        

        var path = Path()

        // top
        path.move(to: CGPoint(x: topXOffset + cornerRadius, y: 0))
        path.addLine(to: CGPoint(x: topXOffset + topWidth - cornerRadius, y: 0))
        path.addArc(center: CGPoint(x: topXOffset + topWidth - cornerRadius, y: cornerRadius),
                    radius: cornerRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: -20), clockwise: false)

        // reght
        path.addLine(to: CGPoint(x: fullWidth - bottomXOffset - cornerRadius + 5, y: height - cornerRadius - 11))
        path.addArc(center: CGPoint(x: fullWidth - bottomXOffset - cornerRadius - 4, y: height - cornerRadius - 6),
                    radius: cornerRadius, startAngle: Angle(degrees: -20), endAngle: Angle(degrees: 60), clockwise: false)

        // bottom
        path.addQuadCurve(to: CGPoint(x: bottomXOffset + 10, y: height - bottomCurveHeight + 6),
                                  control: CGPoint(x: fullWidth / 2, y: height + 28))
        path.addArc(center: CGPoint(x: bottomXOffset + cornerRadius + 4, y: height - cornerRadius - 4),
                           radius: cornerRadius, startAngle: Angle(degrees: 130), endAngle: Angle(degrees: 220), clockwise: false)

        // left
        path.addLine(to: CGPoint(x: topXOffset + cornerRadius - 8, y: cornerRadius))
        path.addArc(center: CGPoint(x: topXOffset + cornerRadius + 4, y: cornerRadius),
                    radius: cornerRadius, startAngle: Angle(degrees: 210), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}
