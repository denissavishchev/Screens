import SwiftUI

struct FigureTile: View {
    
    let minifigures: Minifigures
    
    var body: some View {
        VStack{
            if let url = minifigures.setImgUrl, let imageURL = URL(string: url){
                AsyncImage(url: imageURL){image in
                    if let image = image.image{
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 260, height: 150)
                            .cornerRadius(10)
                    }else{
                        ZStack{
                            Rectangle()
                                .frame(height: 150)
                                .foregroundStyle(.secondary)
                                .opacity(0.3)
                                .cornerRadius(10)
                            
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 50)
                        }
                    }
                }
            }
            VStack(alignment: .leading){
                Text(minifigures.name)
                    .foregroundStyle(.primary)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .opacity(0.8)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}

