//
//  FoodyView.swift
//  Screens
//
//  Created by Devis on 17/03/2025.
//

import SwiftUI

struct Foody: View {
    var body: some View {
        TabView{
            FoodyListView()
                .tabItem {
                    Image(systemName: "house")
                Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                Text("Order")
                }
        }
        .accentColor(.droneGreen)
    }
}

#Preview {
    Foody()
}
