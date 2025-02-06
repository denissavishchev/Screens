import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack(alignment:. bottom){
            MenuTopView()
            
            MenuMiddleView()
            
            MenuBottomView()
        }
        .padding(.horizontal, 32)
        .padding(.bottom, 24)
    }
}

struct MenuTopView: View {
    var body: some View {
        UnevenRoundedRectangle(cornerRadii: .init(
            topLeading: 0,
            bottomLeading: 30,
            bottomTrailing: 0,
            topTrailing: 30
        ))
        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.bikeLightBlue, .bikeBlue]), startPoint: .leading, endPoint: .trailing))
        .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(alignment: .top){
            HStack(spacing: 20){
                Text("D5")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.steamWhite, lineWidth: 1)
                            .frame(width: 60, height: 30)
                    )
                    .padding(.trailing, 16)
                Text("D3")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                Text("D2")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                Text("D-SERIES")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
            }
            .padding(.top, 12)
        }
    }
}

struct MenuBottomView: View {
    var body: some View {
        UnevenRoundedRectangle(cornerRadii: .init(
            topLeading: 0,
            bottomLeading: 10,
            bottomTrailing: 0,
            topTrailing: 10
        ))
        .overlay{
            HStack {
                Text("$5,500.00")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                Image(systemName: "basket")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24)
                    .foregroundColor(.steamWhite)
            }
        }
        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.bikeLightBlue, .bikeBlue]), startPoint: .leading, endPoint: .trailing))
        .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
        .frame(maxWidth: 200, maxHeight: 60)
        .offset(x: 80, y: 20)
    }
}

struct MenuMiddleView: View {
    
    let topColors: [Color] = [.black, .white, .orange]
    let sizes: [String] = ["48", "51", "54", "56", "58"]
    @State private var selectedSize = "48"
    let images: [String] = ["BikeWheel", "BikeBrakes", "BikeSeat", "BikeChain"]
    
    var body: some View {
        UnevenRoundedRectangle(cornerRadii: .init(
            topLeading: 0,
            bottomLeading: 30,
            bottomTrailing: 0,
            topTrailing: 30
        ))
        .overlay{
            VStack(alignment: .leading){
                
                Text("THE BIKES")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                    .padding(.bottom, 4)
                    .padding(.top, 12)
                Text("These bikes prioritize aerodynamics, making them ideal for racing, endurance riding, and fitness training")
                    .font(.system(size: 12, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                    .padding(.bottom, 4)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.bikeGray)
                    .padding(.bottom, 6)
                
                HStack(spacing: 18){
                    Text("OVERVIEW")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.steamWhite.opacity(0.6))
                        
                    Text("SPECS")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.steamWhite.opacity(0.6))
                    Text("CONFIGURE")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.steamWhite)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.steamWhite, lineWidth: 1)
                                .frame(width: 110, height: 20)
                        )
                        .padding(.leading, 16)
                }
                .padding(.bottom, 4)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.bikeGray)
                    .padding(.bottom, 6)
                
                VStack(alignment: .leading){
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .leading){
                            Text("Color:")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .foregroundColor(.steamWhite)
                            HStack {
                                HStack{
                                    ForEach(topColors, id: \.self){color in
                                            Circle()
                                            .frame(width: 12, height: 12)
                                            .foregroundColor(color)
                                    }
                                }
                                Text("Black/White/Orange")
                                    .font(.system(size: 12, weight: .bold, design: .rounded))
                                    .foregroundColor(.steamWhite)
                            }
                    
                        }
                        VStack(alignment: .leading){
                            Text("Brake Type:")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .foregroundColor(.steamWhite)
                                .padding(.bottom, 2)
                            Text("Disk only")
                                .font(.system(size: 12, weight: .bold, design: .rounded))
                            .foregroundColor(.steamWhite)
                        }
                    }
                    .padding(.bottom, 12)
                    HStack{
                        Text("Size:")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(.steamWhite)
                            .padding(.trailing, 12)
                        HStack(spacing: 18){
                            ForEach(sizes, id: \.self){size in
                                    Text(size)
                                        .font(.system(size: 14, weight: .bold, design: .rounded))
                                        .foregroundColor(.steamWhite)
                                        .background(Circle()
                                            .fill(selectedSize == size ? .bikeBlue : .clear)
                                            .shadow(color: .bikeBlue, radius: 4)
                                            .frame(width: 28, height: 28))
                                        .onTapGesture{
                                            withAnimation{
                                                selectedSize = size
                                            }
                                        }
                            }
                        }
                    }
                    .padding(.bottom, 6)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.bikeGray)
                    .padding(.bottom, 2)
                VStack(alignment: .leading){
                    Text("Design:")
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                        .foregroundColor(.steamWhite)
                        .padding(.bottom, 2)
                    HStack(spacing: 20){
                        ForEach(images, id: \.self){image in
                                Image(image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                        }
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 12)
        }
        .foregroundColor(.bikeLightGray)
        .frame(maxWidth: .infinity, maxHeight: 420)
    }
}

