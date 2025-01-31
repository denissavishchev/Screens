
import SwiftUI

struct StarsView: View {

    @State private var rating = 4
    
    var body: some View {
        HStack{
            ForEach(1...5, id: \.self){ i in
                Star(fill: fillingFor(i))
                    .onTapGesture {
                        rating = i
                    }
            }
        }
        
    }
    
    private func fillingFor(_ index: Int) -> Bool {
        index <= rating
    }
    
}

struct Star: View {
    
    let fill: Bool
    
    var body: some View {
        Image(systemName: fill ? "star.fill" : "star")
            .resizable()
            .frame(width: 15, height: 15)
            .foregroundStyle(.vermilion)
            .frame(width: 15, height: 10)
            
    }
}
