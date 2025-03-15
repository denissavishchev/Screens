//
//  StatusViewModel.swift
//  Screens
//
//  Created by Devis on 15/03/2025.
//

import SwiftUI

class StatusViewModel: ObservableObject{
    
    @Published var hours: Double = 0
    @Published var minutes: Double = 0
    @Published var seconds: Int = 0
    @Published var dayOfWeek: String = ""
    @Published var month: String = ""
    @Published var dayOfMonth: String = ""
    
    
    @State private var timer: Timer?
    
    func setCurrentTime() {
        let currentDate = Date()
        let calendar = Calendar.current
        
        hours = Double(calendar.component(.hour, from: currentDate))
        minutes = Double(calendar.component(.minute, from: currentDate))
        seconds = Int(calendar.component(.second, from: currentDate))
        
        let weekday = calendar.component(.weekday, from: currentDate)
        dayOfWeek = dayOfWeekString(from: weekday)
        
        let monthNumber = calendar.component(.month, from: currentDate)
        month = monthString(from: monthNumber)

        dayOfMonth = String(calendar.component(.day, from: currentDate))
    }
    
    private func dayOfWeekString(from weekday: Int) -> String {
            let weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
            return weekdays[weekday - 1]
        }
        
        private func monthString(from monthNumber: Int) -> String {
            let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
            return months[monthNumber - 1]
        }
    
    func formattedTime(value: Double) -> String {
            return String(format: "%02d", Int(value))
        }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] _ in
            updateTime()
        }
    }
    
    func updateTime() {
        if seconds == 59 {
            seconds = 0
            minutes += 1
        } else {
            seconds += 1
        }
        if minutes == 60 {
            minutes = 0
            hours += 1
        }
        if hours == 24 {
            hours = 0
        }
    }
}


