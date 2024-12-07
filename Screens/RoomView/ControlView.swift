import SwiftUI

struct ControlView: View {
    
    var body: some View {
        VStack(spacing: 6){
            HStack{
                FanSwitch()
                CircularView()
            }
            HStack{
                Light()
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(.steamWhite)
                    .frame(width: 90, height: 54)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
    }
}

struct Light: View {
    
    @State private var lightCount: Int = 0
    @State private var bulbColor: Color = .steamBrown.opacity(0.2)
    
    var body: some View {
        ZStack{
            Circle()
                .frame(height: 54)
                .foregroundStyle(.steamWhite)
            Image(systemName: "lightbulb.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 18)
                .foregroundColor(bulbColor)
            HStack{
                VStack{
                    Circle()
                        .frame(height: 12)
                        .foregroundColor(lightCount > 0 ? .steamBrown : .clear)
                    Spacer()
                    Circle()
                        .frame(height: 12)
                        .foregroundColor(lightCount > 2 ? .steamBrown : .clear)
                }
                Spacer()
                VStack{
                    Circle()
                        .frame(height: 12)
                        .foregroundColor(lightCount > 1 ? .steamBrown : .clear)
                    Spacer()
                    Circle()
                        .frame(height: 12)
                        .foregroundColor(lightCount > 3 ? .steamBrown : .clear)
                }
            }
            .frame(width: 50, height: 50)
        }
        .onTapGesture {
            withAnimation{
                switchLight()
            }
        }
    }
    
    func switchLight(){
        switch lightCount {
        case 0:
            lightCount = 1
            bulbColor = .steamBrown.opacity(0.4)
        case 1:
            lightCount = 2
            bulbColor = .steamBrown.opacity(0.6)
        case 2:
            lightCount = 3
            bulbColor = .steamBrown.opacity(0.8)
        case 3:
            lightCount = 4
            bulbColor = .steamBrown
        case 4:
            lightCount = 0
            bulbColor = .steamBrown.opacity(0.2)
        default: lightCount = 0
        }
    }
}

struct FanSwitch: View {
    
    @State private var isAir: Bool = false
    
    var body: some View {
        ZStack(alignment: isAir ? .top : .bottom){
            RoundedRectangle(cornerRadius: 50)
                .fill(.steamWhite)
                .frame(width: 54, height: 84)
            Circle()
                .fill(.steamDarkGray.opacity(0.4))
                .frame(width: 44)
                .overlay(
                    Image("Fan")
                        .resizable()
                        .foregroundStyle(isAir ? .steamBrown : .steamWhite)
                        .rotationEffect(.degrees(isAir ? 360 : 0))
                        .scaledToFill()
                        .padding(6)
                )
                .padding(.vertical, 4)
        }
        .onTapGesture {
            withAnimation{
                isAir.toggle()
            }
        }
    }
}

struct CircularView: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(height: 84)
                .foregroundColor(.steamWhite)
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .foregroundColor(.steamBrown)
                .rotationEffect(.degrees(-90))
                .padding(10)
            Text("70%")
                .font(.system(size: 18))
                .bold()
                .foregroundColor(.steamBrown)
        }
    }
}
