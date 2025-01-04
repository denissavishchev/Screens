import SwiftUI

struct CleaningView: View {
    
    @State var isClean: Bool = false
    
    var body: some View {
        VStack{
            Text("Cleaning")
                .font(.system(size: 20))
                .foregroundStyle(.ampWhite)
                .bold()
                .padding(.top, 8)
            Text("Kitchen")
                .font(.system(size: 12))
                .foregroundStyle(.ampWhite.opacity(0.6))
                .bold()
                .padding(.bottom, 4)
            ZStack(alignment: .bottom){
                Image("Cleaner")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 150, maxHeight: 150)
                OnOffSwitch(isOn: $isClean, color: .goodRed, textColor: .ampWhite)
                    .padding(.bottom, 20)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
    }
}

