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
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity)
                            
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
                    .foregroundStyle(.white)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .opacity(0.8)
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 260)
        .padding(10)
        .background(.black.opacity(0.5))
        .cornerRadius(10)
    }
}

