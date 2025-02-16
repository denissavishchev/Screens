import SwiftUI

struct LeftBottomView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: "folder.fill.badge.gear")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(8)
                .foregroundColor(.retroWhite.opacity(0.7))
                .background(.retroWhite.opacity(0.1), in: .rect(cornerRadius: 12))
                .padding(.bottom, 12)
            Text("82.3 GB")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.ampWhite)
            Text("Remaining")
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .foregroundColor(.ampWhite.opacity(0.7))
            HStack{
                Text("1 TB")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampGreen.opacity(0.7))
                Text("Full memory")
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
            }
            .padding(.top, 12)
        }
        .padding(.horizontal, 8)
        .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
        .background(.ampWhite.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}


