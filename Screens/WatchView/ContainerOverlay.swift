import SwiftUI

struct ContainerOverlay: View {
    
    var size: CGFloat
    var image: String
    @State var selectedImage: String = "Run"
    let images: [String] = ["Run", "SmartWatch", "Switch", "Target"]
    
    var body: some View {
        VStack{
            HStack {
                Spacer()
                WatchButtonView(size: size, image: image)
            }
            Spacer()
            HStack(spacing: 20){
                ForEach(images, id: \.self){ image in
                    WatchFourButtons(isPressed: selectedImage == image, image: image)
                        .onTapGesture {
                            withAnimation{
                                selectedImage = image
                            }
                        }
                }
            }
            Text("ONOLA x Anicorn")
                .font(.system(size: 26))
                .bold()
                .padding(.top, 8)
            Text("Lunar Sample Return LE")
                .font(.system(size: 18))
            Text("Elevate your wrist with this sleek smartwatch featuring fitness tracking, heart rate monitoring, customizable watch faces, and all-day battery life. Perfectly blends style and functionality for your everyday adventures")
                .font(.system(size: 14))
                .padding(.top, 8)
                .padding(.horizontal, 24)
                .padding(.bottom, 20)
        }
    }
}
