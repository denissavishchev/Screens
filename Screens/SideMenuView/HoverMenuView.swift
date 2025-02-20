import SwiftUI

struct HoverMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            VStack(alignment: .leading, spacing: 15){
                Circle()
                    .fill(
                        LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 70, height: 70)
                    .overlay(
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    )
                    .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 5)
                
                VStack(alignment: .leading, spacing: 5){
                    Text("John Weak")
                        .font(.title2.bold())
                    Text("Premium member")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 60)
            .padding(.horizontal)
            
            Rectangle()
                .fill(
                    LinearGradient(colors: [.clear, .gray.opacity(0.2), .clear], startPoint: .leading, endPoint: .trailing)
                )
                .frame(height: 1)
                .padding(.vertical, 30)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 5){
                    ForEach(menuItems){item in
                            MenuItem(menuItem: item)
                    }
                }
            }
            VStack(spacing: 20){
                Button{
                    
                }label: {
                    HStack{
                        Image(systemName: "arrow.right.sqare.fill")
                        Text("Logout")
                    }
                    .foregroundColor(.red)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.red.opacity(0.5), lineWidth: 1)
                    )
                }
                Text("App version")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding()
            .padding(.bottom, 30)
        }
    }
}


