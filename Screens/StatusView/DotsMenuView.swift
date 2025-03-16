import SwiftUI

struct DotsMenuView: View {
    
    private var textes: [String] = ["Camera", "Phone", "Messages", "Apps"]
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(textes, id: \.self){text in
                DotButton(text: text)
            }
        }
        .frame(width: 200, height: 200)
        .offset(x: -80, y: 270)
    }
}

struct DotButton: View {
    
    let text: String
    
    var body: some View {
        HStack{
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(LinearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom))
                Circle()
                    .stroke(lineWidth: 1)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.ampGray.opacity(0.5))
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.ampGray)
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.turco)
            }
            .padding(.trailing, 12)
            Text(text)
                .font(.system(size: 24, weight: .none, design: .rounded))
                .foregroundColor(.black.opacity(0.8))
        }
    }
}

