import SwiftUI

struct SeatsView: View {
    
    let seatsNumber4: [Int] = Array(1...4)
    let seatsNumber6: [Int] = Array(1...6)
    let seatsNumber8: [Int] = Array(1...8)
    
    var body: some View {
        ZStack(alignment: .top){
            
            ScreenLight()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.cyan, .purple]),
                                                startPoint: .top, endPoint: .bottom))
                .padding(.top, 24)
            VStack {
                VStack(spacing: 18){
                            Screen()
                                .stroke(Color.white, lineWidth: 4)
                                .frame(width: 350, height: 150)
                                .shadow(color: .white, radius: 10, y: 10)
                                .padding(.horizontal, 24)
                            HStack{
                                ForEach(seatsNumber6.indices, id: \.self){seat in
                                    Seat(number: seat + 1)
                                }
                            }
                            HStack{
                                ForEach(seatsNumber8.indices, id: \.self){seat in
                                    Seat(number: seat + 1)
                                }
                            }
                            HStack{
                                ForEach(seatsNumber8.indices, id: \.self){seat in
                                    Seat(number: seat + 1)
                                }
                            }
                            HStack{
                                ForEach(seatsNumber4.indices, id: \.self){seat in
                                    Seat(number: seat + 1, back: true)
                                }
                            }
                        
                        }
                        .frame(height: 100)
                        .padding(.top, 24)
                        .padding(.bottom, 160)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(1...20, id: \.self){ i in
                                RoundedRectangle(cornerRadius: 12)
                                .frame(width: 100, height: 60)
                        }
                    }
                    .padding(.horizontal, 24)
                }
                Spacer()
            }
            
        }
    }
}

struct Seat: View {
    
    var number: Int
    var back: Bool = false
    @State var isFree = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: back ? 50 : 36, height: 32)
                .overlay(alignment: .top){
                    ZStack(alignment: .top){
                        UnevenRoundedRectangle(cornerRadii: .init(
                            topLeading: 0,
                            bottomLeading: 8,
                            bottomTrailing: 8,
                            topTrailing: 0
                        ))
                        .stroke(style: .init(lineWidth: 2))
                        .frame(width: back ? 38 : 24, height: 24)
                        .foregroundColor(isFree ? .orange : .white)
                        .padding(.top, 1)
                        Rectangle()
                            .frame(width: back ? 36 : 22, height: 2)
                            .foregroundColor(.black)
                    }
            }
            Text("\(number)")
                .font(.system(size: 14, weight: .bold, design: .rounded))
                .foregroundColor(isFree ? .orange : .white.opacity(0.85))
                .padding(.bottom, 6)
        }
        .onTapGesture {
            withAnimation{
                isFree.toggle()
            }
        }
    }
}



#Preview {
    SeatsView()
}
