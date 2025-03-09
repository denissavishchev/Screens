import SwiftUI

struct WorkoutView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Girl")
                    .resizable()
                    .scaledToFill()
                VStack(alignment: .leading, spacing: 24){
                    Spacer()
                    Text("Cary for\nYou Health\nCompanion")
                        .font(.system(size: 40, weight: .semibold, design: .monospaced))
                        .foregroundColor(.white)
                    Text("Your health is your greatest wealth, so nurture it with care, balance, exercise, rest, and mindful choices every day.")
                        .font(.system(size: 16, weight: .semibold, design: .monospaced))
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: TabsView()){
                        Text("Get started")
                            .font(.system(size: 22, weight: .semibold, design: .monospaced))
                            .foregroundColor(.black)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(
                                Capsule()
                                    .foregroundColor(.ampGreen)
                            )
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding(.horizontal, 18)
                .padding(.bottom, 60)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
    WorkoutView()
}
