import SwiftUI

struct WatchView: View {
    var body: some View {
            ZStack(alignment: .top){
                VStack {
                    HStack{
                        WatchButtonView(size: 50, image: "arrowshape.left.fill")
                        Spacer()
                        WatchButtonView(size: 50, image: "basket.fill")
                    }
                    .padding(EdgeInsets(top: 40, leading: 24, bottom: 20, trailing: 10))
                    VStack{
                        Spacer()
                            Text("ONOLA")
                                .font(.system(size: 100))
                                .bold()
                                .foregroundColor(.ampDarkGray.opacity(0.5))
                            Spacer()
                            Container()
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [.ampDarkGray, .ampWhite]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                            .frame(maxWidth: .infinity, maxHeight: 500)
                            .shadow(color: .gray.opacity(0.8), radius: 10, x: 5, y: 5)
                            .shadow(color: .white.opacity(0.8), radius: 10, x: -5, y: -5)
                            .overlay(
                                ContainerOverlay(size: 45, image: "heart")
                            )
                            .padding(.horizontal, 24)
                        }
                        .frame(height: 550)
                    Spacer()
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(LinearGradient(gradient: Gradient(colors: [.gray, .clear]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                            .frame(width: 150, height: 50)
                            .overlay(
                                HStack {
                                    Text("$4,200")
                                        .bold()
                                    Spacer()
                                }
                                    .padding(.leading, 12)
                            )
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.watchBlue, .watchPurple]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 160, height: 50)
                            .overlay(
                                HStack {
                                    Text("Preorder")
                                        .foregroundColor(.white)
                                        .bold()
                                    Spacer()
                                    Rectangle()
                                        .frame(width: 2, height: 50)
                                        .foregroundColor(.ampWhite.opacity(0.1))
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.white)
                                }
                                    .padding(.horizontal, 12)
                            )
                            .shadow(color: .watchBlue.opacity(0.4), radius: 5, x:  -5)
                            .shadow(color: .watchPurple.opacity(0.4), radius: 5, x:  5)
                        
                    }
                    .frame(width: .infinity, height: 50)
                    Spacer()
                }
                    Image("Watch")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .shadow(color: .gray.opacity(0.6), radius: 8, x: 4, y: 8)
                        .shadow(color: .white.opacity(0.6), radius: 8, x: -4, y: -4)
                        .padding(.horizontal, 24)
                        .padding(.top, 120)
                }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [.ampWhite, .ampGray]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .ignoresSafeArea()
    }
}

#Preview {
    WatchView()
}

