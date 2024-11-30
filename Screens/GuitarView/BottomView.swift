import SwiftUI

struct BottomView: View {
    
    private let names = ["Body", "Neck", "Pickups", "Equaliser", "Strings", "Manual"]
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(names, id: \.self){i in
                        VStack{
                            Text(i)
                        }
                        .frame(width: 100, height: 100)
                        .background((LinearGradient(gradient: Gradient(
                            colors: [.white, .brown.opacity(0.57)]),
                                                    startPoint: .bottomLeading, endPoint: .topTrailing)))
                        .cornerRadius(20)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.white.opacity(0.4), lineWidth: 0.8)
                                .frame(width: 100, height: 100)
                        }
                        .shadow(color: .white.opacity(0.35), radius: 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 180)
                .padding(.bottom, 40)
                .padding(.horizontal, 18)
            }
        }
        
    }
}

