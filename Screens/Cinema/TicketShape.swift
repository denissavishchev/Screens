import SwiftUI

struct TicketShape: Shape{
    func path(in rect: CGRect) -> Path{
        return Path{path in

                   path.addRoundedRect(
                       in: rect,
                       cornerSize: CGSize(width: 10, height: 10)
                   )

                   let leftCutoutCenter = CGPoint(x: 0, y: 90)
                   let rightCutoutCenter = CGPoint(x: rect.width, y: 90)
                   let cutoutRadius: CGFloat = 7
                   
                   let leftCutout = Path { cutoutPath in
                       cutoutPath.addArc(
                           center: leftCutoutCenter,
                           radius: cutoutRadius,
                           startAngle: .degrees(0),
                           endAngle: .degrees(360),
                           clockwise: false
                       )
                   }
                   
                   let rightCutout = Path { cutoutPath in
                       cutoutPath.addArc(
                           center: rightCutoutCenter,
                           radius: cutoutRadius,
                           startAngle: .degrees(0),
                           endAngle: .degrees(360),
                           clockwise: false
                       )
                   }
                   path = path.subtracting(leftCutout)
                   path = path.subtracting(rightCutout)
        }
    }
}
