import SwiftUI

struct GreenContainerOverlay: View {
    
    @StateObject private var vm = GeneralViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10)
                VStack{
                    Text("O General AC")
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                        .bold()
                    Text("Living Room")
                        .font(.system(size: 10))
                        .foregroundStyle(.black)
                        .bold()
                }
                .padding(.leading, 50)
                .padding(.trailing, 45)
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10)
            }
            .padding(.trailing, 70)
            HStack(spacing: 5){
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 70, height: 90)
                    .overlay(
                    Image(systemName: "minus")
                        .foregroundColor(.goodGreen)
                    )
                VStack(spacing: 4){
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(.black, lineWidth: 1)
                        .overlay(
                        Text("19\u{00B0}C")
                            .font(.system(size: 22))
                            .bold()
                            .foregroundColor(.black)
                        )
                        .frame(width: 130, height: 44)
                    HStack(spacing: 4){
                        ForEach(vm.generals){general in
                            Circle()
                                .stroke(.black, lineWidth: 1)
                                .frame(width: 40, height: 40)
                                .overlay(
                                    ZStack{
                                        Circle()
                                            .trim(from: 0, to: general.value)
                                            .stroke(.black, lineWidth: 2)
                                            .rotationEffect(.degrees(-90))
                                            .frame(width: 34, height: 34)
                                        Image(systemName: general.icon)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                    }
                                )
                        }
                       
                    }
                }
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 70, height: 90)
                    .overlay(
                    Image(systemName: "plus")
                        .foregroundColor(.goodGreen)
                    )
                Spacer()
            }
            .padding(.top, 5)
            .padding(.leading, 8)
        }
        .padding(.top, 145)
    }
}

