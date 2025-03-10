import SwiftUI

struct MainWorkoutView: View {
    
    @State private var selectedIndex: Int? = nil
    
    private var challenges: [ChalengesModel] = [
        ChalengesModel(name: "Back", image: "Back", description: "Focuses on strengthening and building the back muscles, including the latissimus dorsi, traps, rhomboids, and lower back. Common exercises include pull-ups, deadlifts, barbell rows, and lat pulldowns to improve posture and overall upper body strength."),
        ChalengesModel(name: "Chest", image: "Chest", description: "Builds the pectorals, triceps, and shoulders, enhancing upper body definition and pushing strength. Key movements include bench press, dumbbell flyes, dips, and push-ups to develop a well-rounded chest."),
        ChalengesModel(name: "Legs", image: "Legs", description: "Targets the quadriceps, hamstrings, glutes, and calves, essential for power and balance. Exercises like squats, lunges, leg presses, and Romanian deadlifts help build lower body strength, endurance, and explosiveness."),
        ChalengesModel(name: "Arms", image: "Pomps", description: "Targets the biceps, triceps, and forearms to improve grip strength and arm definition. Exercises like bicep curls, tricep dips, hammer curls, and skull crushers help create stronger, more muscular arms."),
        ChalengesModel(name: "Shoulders", image: "Pull", description: "Develops the deltoids and traps for broader, stronger shoulders. Key exercises include overhead presses, lateral raises, face pulls, and Arnold presses, contributing to upper body strength and aesthetics."),
        ChalengesModel(name: "Cardio", image: "Running", description: "Improves cardiovascular endurance and burns fat through running, cycling, rowing, jump rope, HIIT, or swimming. Helps strengthen the heart, improve stamina, and aid in recovery between strength training sessions."),
        ChalengesModel(name: "Abdominal", image: "Stomach", description: "Strengthens the abdominal muscles, obliques, and lower back, improving core stability and overall performance. Key movements include planks, crunches, leg raises, Russian twists, and hanging knee tucks for a strong and defined core."),
    ]
    
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
                        ForEach(Array(challenges.enumerated()), id: \.element.image) { index, challenge in
                            ZStack {
                                HStack {
                                    Image(challenge.image)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    Spacer()
                                }
                                VStack {
                                    if selectedIndex == index {
                                        Text(challenge.description)
                                            .foregroundColor(.white)
                                            .font(.system(size: 14))
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    }
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
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [.clear, .clear, .white.opacity(0.6)]),
                                                       startPoint: .topLeading, endPoint: .bottomTrailing),
                                        lineWidth: 0.5
                                    )
                            )
                            .onTapGesture {
                                withAnimation {
                                    selectedIndex = (selectedIndex == index) ? nil : index
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
