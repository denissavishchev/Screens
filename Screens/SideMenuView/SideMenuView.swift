import SwiftUI

struct SideMenuView: View {
    
    @State private var isShovingMenu = false
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    menuButton
                    Spacer()
                }
                Spacer()
                subscribeSection
                Spacer()
            }
            .blur(radius: isShovingMenu ? 5 : 0)
            sideMenu
        }
    }
    
    private var menuButton: some View{
        Button{
            withAnimation(.spring(response: 0.3, dampingFraction: 0.8)){
                isShovingMenu.toggle()
            }
        }label: {
            Image(systemName: "line.horizontal.3")
                .imageScale(.large)
                .foregroundColor(.primary)
                .rotationEffect(Angle(degrees: isShovingMenu ? 90 : 0))
                .padding(12)
                .background(
                    Circle()
                        .fill(.gray.opacity(0.1))
                        .shadow(color: .gray.opacity(0.2), radius: 5, y: 2)
                )
        }
        .padding()
    }
    
    private var subscribeSection: some View{
        VStack(spacing: 20){
            Image(systemName: "star.circle.fill")
                .imageScale(.large)
                .foregroundColor(.yellow)
                .font(.system(size: 40))
            
            Text("Subscribe")
                .font(.title2.bold())
                .foregroundColor(.primary)
            
            Text("Help us")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.systemBackground))
                .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 5)
        )
        .padding()
    }
    
    private var sideMenu: some View{
        GeometryReader {geometry in
            HStack(spacing: 0){
                HoverMenuView()
                    .frame(width: min(geometry.size.width * 0.75, 300))
                    .frame(maxWidth: .infinity)
                    .background(
                        ZStack{
                            Color(.systemBackground)
                            Circle()
                                .fill(
                                    LinearGradient(colors: [.blue.opacity(0.2), .purple.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                                .frame(width: 200, height: 200)
                                .blur(radius: 50)
                                .offset(x: -100, y: -50)
                            
                            Circle()
                                .fill(
                                    LinearGradient(colors: [.orange.opacity(0.2), .red.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                                .frame(width: 200, height: 200)
                                .blur(radius: 50)
                                .offset(x: 50, y: geometry.size.height - 100)
                        }
                    )
                    .clipShape(
                        CornerShape(radius: 30, corners: [.topRight, .bottomRight])
                    )
                    .shadow(color: .black.opacity(0.15), radius: 20, x: 5, y: 0)
                    .offset(x: isShovingMenu ? 0 : -geometry.size.width)
                
                Spacer()
            }
            .padding(.trailing, 100)
            .background(
                Color.black.opacity(isShovingMenu ? 0.3 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.8)){
                            isShovingMenu = false
                        }
                    }
            )
        }
        .ignoresSafeArea()
        .animation(.spring(response: 0.3, dampingFraction: 0.8), value: isShovingMenu)
    }
    
}

#Preview {
    SideMenuView()
}
