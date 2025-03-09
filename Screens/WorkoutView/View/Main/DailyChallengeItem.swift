import SwiftUI

struct DailyChallengeItem: View {
    
    let avatars: [String] = ["Avatar1", "Avatar2", "Avatar3", ""]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading){
                Text("Daily\nchallenge")
                    .font(.system(size: 16, weight: .bold, design: .monospaced))
                Text("Soon you will find a training plan and a trainer to improve your condition. But for now, do a 7-day challenge with other users. One day is one challenge")
                    .font(.system(size: 10, weight: .bold, design: .monospaced))
                HStack(spacing: -4){
                    ForEach(avatars, id: \.self){a in
                        if a.isEmpty {
                            Text("+4")
                                .font(.system(size: 12, weight: .medium, design: .monospaced))
                                .foregroundColor(.white)
                                .background(
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.green.opacity(0.4))
                                )
                        } else {
                            Image(a)
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                }
            }
            .frame(height: 150, alignment: .leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 12)
            .padding(.trailing, 54)
            .background(.ampGreen)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Image("Smile")
                .resizable()
                .scaledToFit()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 180)
        .padding(18)
    }
}

