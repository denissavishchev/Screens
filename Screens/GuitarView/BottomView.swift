import SwiftUI


struct BottomView: View {
    
    private let icons = [
        Bottom(name: "Head", icon: "Head"),
        Bottom(name: "EQ", icon: "EQ"),
        Bottom(name: "Sound", icon: "Drum"),
        Bottom(name: "Settings", icon: "Settings"),
        Bottom(name: "Vinil", icon: "Vinil"),
        Bottom(name: "Manual", icon: "Note")
    ]
    
    @State private var isFavorite: Bool = false
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(icons, id: \.id){icon in
                        VStack(spacing: 0){
                            Image(icon.icon)
                                .shadow(color: .white, radius: 5)
                            Text(icon.name)
                                .shadow(color: .brown.opacity(0.5), radius: 5)
                                .bold()
                            Spacer()
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
                .frame(height: 100)
                .padding(.bottom, 70)
                .padding(.top, 2)
                .padding(.horizontal, 18)
            }
    }
}

struct Bottom: Identifiable{
    let id = UUID()
    let name: String
    let icon: String
}


