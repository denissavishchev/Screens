import SwiftUI

struct JellyView: View {
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom){
                BackgroundView()
                
                VStack{
                    TopButtons()
                    
                    HStack{
                        StarsView()
                        Spacer()
                        Image(systemName: "eye")
                            .foregroundColor(.vermilion)
                        Text("32k")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(.vermilion)
                    }
                    .padding(.top, 20)
                    
                    HStack{
                        Text("Composition")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                            .foregroundColor(.icyGray)
                            .shadow(color: .gray, radius: 5)
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.icyGray)
                            .padding(.leading, 12)
                            .padding(.top, 12)
                        Spacer()
                    }
                    
                    VStack{
                        HStack {
                            VStack {
                                HStack {
                                    Image("UK")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .shadow(color: .gray, radius: 5, x: 2, y: 2)
                                        .offset(y: -20)
                                        .padding(.leading, 12)
                                    Spacer()
                                }
                                PaintView()
                                
                            }
                            Spacer()
                            VStack{
                                MiddleButtons(color: .goodBlue, image: "message", side: true)
                                    .padding(.bottom, 8)
                                MiddleButtons(color: .goodRed, image: "heart", side: false)
                                Spacer()
                                DottedButton()
                                Spacer()
                            }
                        }
                        .frame(maxHeight: 350)
                    }
                    Spacer()
                }
                .padding(12)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
    
                UnderView()
                
                
            }
        }
        
    }
}

#Preview {
    JellyView()
}

