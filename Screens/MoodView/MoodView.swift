import SwiftUI

enum Mood: String{
    case veryUnpleasant = "Very Unpleasant"
    case unpleasant = "Unpleasant"
    case neutral = "Neutral"
    case pleasant = "Pleasant"
    case veryPleasant = "Very Pleasant"
    
    var color: Color{
        switch self{
        case .veryUnpleasant: return .red
        case .unpleasant: return .orange
        case .neutral: return .yellow
        case .pleasant: return .green
        case .veryPleasant: return .blue
        }
    }
}

struct MoodView: View {
    
    @State private var moodValue: Double = 0
    private var selectedMood: Mood{
        switch moodValue{
        case 0: return .veryUnpleasant
        case 1: return .unpleasant
        case 2: return .neutral
        case 3: return .pleasant
        case 4: return .veryPleasant
        default: return .neutral
        }
    }
    
    var body: some View {
        ZStack{
            selectedMood.color.edgesIgnoringSafeArea(.all)
                .opacity(0.2)
            VStack{
                Text("How are you feeling today?")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                BlobView(color: .red)
                Spacer()
                Text(selectedMood.rawValue)
                    .font(.title)
                Spacer()
                MoodSlider(moodValue: $moodValue)
                Spacer()
                Button{
                    //
                }label: {
                    Text("Save")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(selectedMood.color)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding(40)
        }
        
    }
}

#Preview {
    MoodView()
}

struct MoodSlider: View {
    
    private let size: CGFloat = 40
    private let trackWidth: CGFloat = 300
    @Binding var moodValue: Double
    @State private var xValue: CGFloat = 0
    private let steps = 5
    
    var body: some View {
        
        let stepWidth = (trackWidth - size) / CGFloat(steps - 1)
        
        ZStack(alignment: .leading){
            Capsule()
                .frame(width: trackWidth, height: size)
                .opacity(0.2)
                .foregroundStyle(.gray)
            Circle()
                .frame(width: size, height: size)
                .offset(x: xValue)
                .foregroundStyle(.white)
                .shadow(radius: 10)
                .gesture(DragGesture().onChanged{ value in
                    let minX: CGFloat = 0
                    let maxX: CGFloat = trackWidth - size
                    let clampedX = min(max(minX, value.location.x), maxX)
                    
                    let step = round(clampedX / stepWidth)
                    self.xValue = step * stepWidth
                    self.moodValue = Double(step)
                })
        }
    }
}


struct BlobView: View {
    
    var color: Color
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: 100, height: 100)
    }
}
