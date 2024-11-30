//
//  ContentView.swift
//  Screens
//
//  Created by Devis on 30/11/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            Text("one")
            Text("two")
            Text("three")
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    HomeView()
}
