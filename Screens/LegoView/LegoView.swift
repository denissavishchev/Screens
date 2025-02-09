import SwiftUI

struct LegoView: View {
    
    @StateObject var lvm = LegoViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Text("Minifigures")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 12){
                    ForEach(lvm.minifigures, id: \.setImgUrl) { minifigure in
                        FigureTile(minifigures: minifigure)
                        
                    }
                }
                .padding(.horizontal)
            }
            .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
        }
        .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
        .background(.secondary.opacity(0.3))
        .refreshable {
            lvm.fetchMinifigures()
        }
    }
}

#Preview {
    LegoView()
}
