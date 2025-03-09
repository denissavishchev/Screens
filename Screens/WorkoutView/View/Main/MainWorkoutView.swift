import SwiftUI

struct MainWorkoutView: View {
    
    @State private var selectedIndex: Int? = nil
    
    private var challengeImages: [String] = ["Back", "Chest", "Legs", "Pomps", "Pull", "Running", "Stomach"]
    
    var body: some View {
        VStack {
            AvatarBarItem()
            
            DailyChallengeItem()
            
            VStack {
                HStack(spacing: 10) {
                    ForEach(1...7, id: \.self) { index in
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 40, height: 60)
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 1)
                                .frame(width: 40, height: 60)
                            VStack {
                                Circle()
                                    .frame(width: 4, height: 4)
                                    .foregroundColor(.white)
                                Text("Day")
                                    .font(.system(size: 14, weight: .medium, design: .monospaced))
                                    .foregroundColor(.white)
                                Text("\(index)")
                                    .font(.system(size: 14, weight: .medium, design: .monospaced))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 18)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 10) {
                        ForEach(Array(challengeImages.enumerated()), id: \.element) { index, image in
                            ZStack {
                                HStack{
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    Spacer()
                                }
                                VStack{
                                    
                                }
                                .frame(maxWidth: .infinity)
                                .frame(height: selectedIndex == index ? 150 : 60)
                                .background(selectedIndex == index
                                            ? LinearGradient(colors: [.clear, .black.opacity(0.5), .black], startPoint: .leading, endPoint: .trailing)
                                            : nil)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: selectedIndex == index ? 150 : 60)
                            .background(.black)
                            .cornerRadius(10)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [.clear, .clear, .white.opacity(0.6)]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 0.5)
                            }
                            .onTapGesture {
                                withAnimation {
                                    if selectedIndex == index {
                                        selectedIndex = nil
                                    } else {
                                        selectedIndex = index
                                    }
                                }
                        }
                        }
                    }
                    .padding()
                    .padding(.bottom, 80)
                }
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 30)
        .background(Color.black)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    MainWorkoutView()
}
