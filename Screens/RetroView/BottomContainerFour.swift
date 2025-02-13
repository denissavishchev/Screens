import SwiftUI

struct BottomContainerFour: View {
    var body: some View {
        HStack(spacing: 3){
            FourContainerButton(color: .retroBlack, iconColor: .retroWhite, icon: "flashlight.on.fill")
                .frame(maxWidth: .infinity)
                .frame(height: 90)
                .background(.retroWhite)
                .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 5, bottomLeading: 32, bottomTrailing: 5, topTrailing: 5)))
            
            FourContainerButton(color: .retroWhite, iconColor: .retroRed, icon: "trash.circle.fill")
            .frame(width: 90, height: 90)
            .background(.retroWhite)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
            FourContainerButton(color: .retroBlack, iconColor: .retroWhite, icon: "camera.fill")
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .background(.retroWhite)
            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 5, bottomLeading: 5, bottomTrailing: 32, topTrailing: 5)))
        }
        .padding(.horizontal, 4)
    }
}

struct FourContainerButton: View {
    
    let color: Color
    let iconColor: Color
    let icon: String
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(.retroWhite)
                .shadow(color: .retroBlack.opacity(0.5), radius: 5, x: 5, y: 5)
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(color)
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(height: 32)
                .foregroundColor(iconColor)
        }
        
    }
}

