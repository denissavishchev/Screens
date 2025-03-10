import SwiftUI

struct ChallengeView: View {
    
    @State private var selectedIndex: Int? = nil
    
    @State private var challenges: [ChalengesModel] = [
        ChalengesModel(name: "Back", count: "4x12", image: "Back", description: "Focuses on strengthening and building the back muscles, including the latissimus dorsi, traps, rhomboids, and lower back. Common exercises include pull-ups, deadlifts, barbell rows, and lat pulldowns to improve posture and overall upper body strength.", isDone: false),
        ChalengesModel(name: "Chest", count: "5x8", image: "Chest", description: "Builds the pectorals, triceps, and shoulders, enhancing upper body definition and pushing strength. Key movements include bench press, dumbbell flyes, dips, and push-ups to develop a well-rounded chest.", isDone: false),
        ChalengesModel(name: "Legs", count: "4x20", image: "Legs", description: "Targets the quadriceps, hamstrings, glutes, and calves, essential for power and balance. Exercises like squats, lunges, leg presses, and Romanian deadlifts help build lower body strength, endurance, and explosiveness.", isDone: false),
        ChalengesModel(name: "Arms", count: "4x50", image: "Pomps", description: "Targets the biceps, triceps, and forearms to improve grip strength and arm definition. Exercises like bicep curls, tricep dips, hammer curls, and skull crushers help create stronger, more muscular arms.", isDone: false),
        ChalengesModel(name: "Shoulders", count: "4x12", image: "Pull", description: "Develops the deltoids and traps for broader, stronger shoulders. Key exercises include overhead presses, lateral raises, face pulls, and Arnold presses, contributing to upper body strength and aesthetics.", isDone: false),
        ChalengesModel(name: "Cardio", count: "30min", image: "Running", description: "Improves cardiovascular endurance and burns fat through running, cycling, rowing, jump rope, HIIT, or swimming. Helps strengthen the heart, improve stamina, and aid in recovery between strength training sessions.", isDone: false),
        ChalengesModel(name: "Abdominal", count: "2x40", image: "Stomach", description: "Strengthens the abdominal muscles, obliques, and lower back, improving core stability and overall performance. Key movements include planks, crunches, leg raises, Russian twists, and hanging knee tucks for a strong and defined core.", isDone: false),
    ]
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                ForEach(1...7, id: \.self) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 40, height: 60)
                            .foregroundColor(index < challenges.filter { $0.isDone }.count + 1 ? .ampGreen : .black)
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(index < challenges.filter { $0.isDone }.count + 1 ? .ampGreen : .white, lineWidth: 1)
                            .frame(width: 40, height: 60)
                        VStack {
                            Circle()
                                .frame(width: 8, height: 8)
                                .foregroundColor(index < challenges.filter { $0.isDone }.count + 1 ? .black : .white)
                            Text("Day")
                                .font(.system(size: 14, weight: .medium, design: .monospaced))
                                .foregroundColor(index < challenges.filter { $0.isDone }.count + 1 ? .black : .white)
                            Text("\(index)")
                                .font(.system(size: 14, weight: .medium, design: .monospaced))
                                .foregroundColor(index < challenges.filter { $0.isDone }.count + 1 ? .black : .white)
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
                                if selectedIndex != index {
                                    HStack {
                                        Text(challenge.name)
                                            .foregroundColor(.white)
                                            .font(.system(size: 24, weight: .bold, design: .monospaced))
                                            .multilineTextAlignment(.center)
                                        Spacer()
                                        Text(challenge.count)
                                            .foregroundColor(.white)
                                            .font(.system(size: 18, weight: .bold, design: .monospaced))
                                            .multilineTextAlignment(.center)
                                            .padding(.trailing, 8)
                                    }
                                }
                                Spacer()
                            }
                            VStack {
                                if selectedIndex == index {
                                    ZStack {
                                        Text(challenge.description)
                                            .foregroundColor(.white)
                                            .font(.system(size: 12, weight: .bold, design: .monospaced))
                                            .multilineTextAlignment(.leading)
                                            .background(
                                                Color.black.opacity(0.3)
                                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                            )
                                            .padding()
                                            .padding(.trailing, 50)
                                        HStack {
                                            Spacer()
                                            VStack{
                                                challenge.isDone ? nil : Spacer()
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .frame(width: 36, height: 50)
                                                        .foregroundStyle(LinearGradient(colors: [.ampBlue, .ampWhite], startPoint: .topLeading, endPoint: .bottomTrailing))
                                                        .padding(.vertical, 2)
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .stroke(.black, lineWidth: 1)
                                                        .frame(width: 36, height: 50)
                                                    Circle()
                                                        .frame(width: 18, height: 18)
                                                        .foregroundColor(challenge.isDone ? .green : .white)
                                                    
                                                }
                                                challenge.isDone ? Spacer() : nil
                                            }
                                            .frame(width: 40, height: 100)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .fill(
                                                        .shadow(.inner(color: .black.opacity(0.6), radius: 5, x: 5, y: 5))
                                                    )
                                            )
                                            .foregroundColor(.white.opacity(0.9))
                                            .padding(.trailing, 18)
                                            .onTapGesture{
                                                withAnimation{
                                                    challenges[index].isDone.toggle()
                                                }
                                            }
                                        }
                                    }
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
    }
}

