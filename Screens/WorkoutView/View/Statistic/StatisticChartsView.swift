import SwiftUI
import Charts

enum WorkoutType: String, CaseIterable {
    case colories = "Colories"
    case heartRate = "Heart rate"
    case bpm = "BPM"
}

struct StatisticsChartsView: View {
    
    var chartStatistics: [ChartsModel] = [
        ChartsModel(date: .createDate(1, 1, 2024), calories: 1320, heartRate: 87, bpm: 24),
        ChartsModel(date: .createDate(2, 1, 2024), calories: 2300, heartRate: 90, bpm: 27),
        ChartsModel(date: .createDate(3, 1, 2024), calories: 1780, heartRate: 78, bpm: 32),
        ChartsModel(date: .createDate(4, 1, 2024), calories: 1320, heartRate: 67, bpm: 41),
        ChartsModel(date: .createDate(5, 1, 2024), calories: 1450, heartRate: 99, bpm: 28),
        ChartsModel(date: .createDate(6, 1, 2024), calories: 1652, heartRate: 120, bpm: 37),
        ChartsModel(date: .createDate(7, 1, 2024), calories: 1543, heartRate: 85, bpm: 24),
        ChartsModel(date: .createDate(8, 1, 2024), calories: 1764, heartRate: 82, bpm: 21),
        ChartsModel(date: .createDate(9, 1, 2024), calories: 1009, heartRate: 57, bpm: 28),
        ChartsModel(date: .createDate(10, 1, 2024), calories: 1450, heartRate: 91, bpm: 30),
    ]
    
    @State private var selectedType: WorkoutType = .colories
    
    var body: some View {
        VStack{
            
            HStack{
                ForEach(WorkoutType.allCases, id: \.self) { type in
                    Button(action: {
                        withAnimation {
                            selectedType = type
                        }
                    }) {
                        Text(type.rawValue)
                            .font(.system(size: 12, weight: .bold, design: .monospaced))
                            .foregroundColor(selectedType == type ? .black : .white)
                            .padding(12)
                            .frame(maxWidth: .infinity)
                            .background(selectedType == type ? Color.green : Color.gray.opacity(0.1))
                            .cornerRadius(20)
                    }
                }
            }
            .padding(8)
            
            Chart(chartStatistics) { stat in
                BarMark(
                    x: .value("Date", stat.date, unit: .day),
                    y: .value("Calories", selectedType == .colories
                              ? stat.calories
                              : selectedType == .heartRate
                              ? stat.heartRate
                              : stat.bpm
                             )
                )
                .foregroundStyle(.ampGreen)
                .cornerRadius(20)
            }
            .padding(18)
        }
        .frame(width: UIScreen.main.bounds.width - 36)
        .frame(height: 300)
        .background(.ampGreen.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .padding(.vertical, 18)
    }
}

