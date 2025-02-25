import SwiftUI

struct InfoRow: View {
    
    let systemImage: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: systemImage)
                .font(.title2)
                .foregroundStyle(.blue)
                .frame(width: 40)
            
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
        }
    }
}


