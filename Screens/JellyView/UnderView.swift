import SwiftUI

struct UnderView: View {
    
    let images: [String] = ["B1", "B2", "B3", "B4"]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(images, id: \.self) {image in
                        Image(image)
                            .resizable()
                            .frame(width: 150, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                    }
                }
                .padding(.horizontal, 12)
            }
            .padding(.bottom, 12)
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 30,
                bottomLeading: 30,
                bottomTrailing: 20,
                topTrailing: 100
            ))
            .foregroundColor(.ampGreen.opacity(0.5))
            .frame(maxWidth: .infinity, maxHeight: 100)
            .padding(.horizontal, 12)
            .overlay{
                HStack{
                    VStack{
                        HStack{
                            Text("Devis S.")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                                .foregroundColor(.ampWhite)
                            Spacer()
                            StarsView()
                        }
                        Text("Amazing! The best thing for beginers.")
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .foregroundColor(.ampWhite.opacity(0.8))
                    }
                    RightButton()
                }
                .padding(.horizontal, 30)
            }
        }
    }
}
