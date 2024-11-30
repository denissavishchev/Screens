import SwiftUI

struct WoodView: View {
    
    private let wood = ["Mahogany", "Walmut", "Burl", "Paduak", "Maple", "Purpleheart"]
    
    var body: some View {
        VStack{
            ForEach(wood, id: \.self){w in
                Image(w)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(15)
                    .overlay{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.black.opacity(0.7), lineWidth: 0.15)
                            .frame(width: 60, height: 60)
                    }
                    .shadow(color: .black.opacity(0.4), radius: 4, x: 3, y: 4)
                    .padding(.trailing, 25)
                
            }
        }
    }
}
