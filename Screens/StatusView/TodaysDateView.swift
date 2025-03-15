//
//  TodaysDateView.swift
//  Screens
//
//  Created by Devis on 15/03/2025.
//

import SwiftUI

struct TodaysDateView: View {
    
    @StateObject var svm = StatusViewModel()
    
    var body: some View {
        HStack{
            VStack(spacing: -30){
                HStack{
                    Text("\(svm.formattedTime(value: svm.hours))")
                        .font(.system(size: 60, weight: .regular, design: .rounded))
                        .foregroundColor(.black)
                    Text("H")
                        .font(.system(size: 32, weight: .regular, design: .rounded))
                        .foregroundColor(.black.opacity(0.8))
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("\(svm.formattedTime(value: svm.minutes))")
                        .font(.system(size: 60, weight: .regular, design: .rounded))
                        .foregroundColor(.gray)
                }
                Spacer()
                HStack {
                    Spacer()
                    Text("\(svm.formattedTime(value: Double(svm.seconds)))")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(.turco)
                        .shadow(color: .blue, radius: 5)
                }
                .padding(.top, 12)
                Spacer()
            }
            .frame(width: 130, height: 130)
            Rectangle()
                .frame(width: 2, height: 120)
                .foregroundColor(.gray)
            VStack(alignment: .leading){
                HStack{
                    Text("\(svm.dayOfWeek.uppercased())")
                        .font(.system(size: 22, weight: .regular, design: .rounded))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "bolt.fill")
                    Text("100%")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                }
                HStack{
                    Text("\(svm.month.uppercased())")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    Text("\(svm.dayOfMonth.uppercased())")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(.horizontal, 18)
    }
}
