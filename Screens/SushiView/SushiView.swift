import SwiftUI

struct SushiView: View {
    
    @State var isFavorite: Bool = false
    @State var selectedUnit: String = "6"
    let units: [String] = ["6", "12", "24"]
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundColor(isFavorite ? .red : .gray)
                    .onTapGesture {
                        withAnimation{
                            isFavorite.toggle()
                        }
                    }
            }
            .padding(.horizontal, 24)
            Text("Asparagus")
                .font(.system(size: 30))
            Text("Green category")
                .foregroundColor(.green.opacity(0.6))
            HStack{
                ForEach(units, id: \.self){unit in
                    UnitsButtonView(isPressed: selectedUnit == unit, unit: unit)
                        .onTapGesture {
                            withAnimation{
                                selectedUnit = unit
                            }
                        }
                }
            }
            Image("Sushi")
                .resizable()
                .scaledToFit()
                .frame(width: 280)
                .shadow(color: .gray.opacity(0.6), radius: 8, x: 4, y: 8)
            
            Spacer()
        }
    }
}
    
#Preview {
    SushiView()
}
    

