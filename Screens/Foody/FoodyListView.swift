//
//  FoodyListView.swift
//  Screens
//
//  Created by Devis on 17/03/2025.
//

import SwiftUI

struct FoodyListView: View {
    var body: some View {
        NavigationView{
            List(MockData.foodies, id: \.id){foody in
                FoodyListCell(foody: foody)
            }
                .navigationTitle("🍟 Foody")
        }
    }
}

#Preview {
    FoodyListView()
}
