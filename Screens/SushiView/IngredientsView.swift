import SwiftUI

struct IngredientsView: View {
    
    let names: [String] = ["Octopus", "Rice", "Asparagus", "Caviar"]
    
    var body: some View {
        HStack{
            ForEach(names, id: \.self) {name in
                Ingredient(name: name)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
        .background(.white.opacity(0.5))
        .cornerRadius(5)
        .shadow(color: .black.opacity(0.15), radius: 10, x: 5, y: 10)
        .padding(24)
    }
}

struct Ingredient: View {
    
    var name: String
    
    var body: some View {
        Group{
            Spacer()
            VStack{
                Image(name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                Text(name)
                    .font(.system(size: 12))
            }
            Spacer()
            if name == "Caviar"{
               EmptyView()
            } else{
                VStack{
                    ForEach(1...3, id: \.self){_ in
                        Circle()
                            .frame(width: 3)
                    }
                }
            }
            
        }
    }
}
