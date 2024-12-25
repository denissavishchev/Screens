import SwiftUI

struct SushiView: View {
    
    @State var isFavorite: Bool = false
    @State var selectedUnit: String = "6"
    let units: [String] = ["6", "12", "24"]
    let stars: Int = 4
    
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
                .padding(.bottom, 12)
            HStack(spacing: 20){
                ForEach(units, id: \.self){unit in
                    UnitsButtonView(isPressed: selectedUnit == unit, unit: unit)
                        .onTapGesture {
                            withAnimation{
                                selectedUnit = unit
                            }
                        }
                }
            }
            .padding(.bottom, 12)
            Image("Sushi")
                .resizable()
                .scaledToFit()
                .frame(width: 280)
                .shadow(color: .gray.opacity(0.6), radius: 8, x: 4, y: 8)
            IngredientsView()
                .padding(.bottom, 12)
            HStack(spacing: 0){
                Text("$24")
                    .font(.system(size: 40))
                    .bold()
                Text(".99")
                    .font(.system(size: 20))
                    .bold()
                    .baselineOffset(20)
                Spacer()
                VStack (alignment: .leading){
                    Text("valuations")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                    HStack{
                        HStack{
                            Text("4.5")
                            Spacer()
                            HStack(alignment: .center, spacing: 12){
                                ForEach(1...5, id:  \.self){i in
                                       Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 16, height: 16)
                                        .foregroundColor(i > stars ? .gray : .orange)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 8)
                            Spacer()
                            Text("(45)")
                        }
                    }
                    .frame(maxWidth: 210)
                }
                Spacer()
            }
            .padding(.horizontal, 24)
            Spacer()
        }
        .background(.gray.opacity(0.3))
    }
}
    
#Preview {
    SushiView()
}
    





