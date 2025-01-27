import SwiftUI

struct TicketsView: View {
    
    @State var selectedTicket: Int = 1
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                ForEach(1...15, id: \.self){ i in
                    TicketShape()
                        .frame(width: 80, height: 120)
                        .foregroundStyle(LinearGradient(gradient: Gradient(
                            colors: [
                                selectedTicket == i ? .red : .black.opacity(0.7),
                                selectedTicket == i ? .red.opacity(0.2) : .black
                            ]),
                                                        startPoint: .topLeading, endPoint: .bottomTrailing))
                        .shadow(color: .white.opacity(0.6), radius: 1)
                        .overlay(alignment: .center){
                            VStack(spacing: 12){
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.black)
                                Text("Mon")
                                    .font(.system(size: 18, weight: .medium, design: .rounded))
                                    .foregroundColor(.white)
                                Text("16")
                                    .font(.system(size: 24, weight: .medium, design: .rounded))
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.vertical, 4)
                        .onTapGesture {
                            withAnimation{
                                selectedTicket = i
                            }
                        }
                }
            }
            .padding(.horizontal, 20)
        }
        .frame(width: UIScreen.main.bounds.width, height: 130)
    }
}
