//
//  FoodyListCell.swift
//  Screens
//
//  Created by Devis on 18/03/2025.
//

import SwiftUI

struct FoodyListCell: View {
    
    let foody: FoodyModel
    
    var body: some View {
        HStack{
            Image("Abstract")
                .resizable()
                .frame(width: 120, height: 80)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(foody.name)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                Text("$\(foody.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}


