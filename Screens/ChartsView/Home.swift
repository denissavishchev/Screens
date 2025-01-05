import SwiftUI
import Charts

struct Home: View {
    
    @State private var graphType: GraphType = .bar
    
    @State private var barSelection: String?
    
    var body: some View {
        VStack{
            Picker("", selection: $graphType){
                ForEach(GraphType.allCases, id: \.rawValue){type in
                    Text(type.rawValue)
                        .tag(type)
                }
            }
            .pickerStyle(.segmented)
            .labelsHidden()
            
            Chart{
                ForEach(appDownloads.sorted(by: {graphType == .bar ? false : $0.downloads > $1.downloads}))
                {download in
                    if graphType == .bar {
                        BarMark(
                            x: .value("Month", download.month),
                            y: .value("Downloads", download.downloads)
                        )
                        .cornerRadius(8)
                        .foregroundStyle(by: .value("Month", download.month))
                    }else{
                        SectorMark(
                            angle: .value("Downloads", download.downloads),
                            innerRadius: .ratio(graphType == .donut ? 0.5 : 0),
                            angularInset: graphType == .donut ? 5 : 1
                        )
                        .cornerRadius(8)
                        .foregroundStyle(by: .value("Month", download.month))
                    }
                }
                if let barSelection {
                    RuleMark(x: .value("Month", barSelection))
                        .foregroundStyle(.gray.opacity(0.3))
                        .zIndex(-10)
                        .offset(yStart: -10)
                }
            }
            .chartXSelection(value: $barSelection)
            .chartLegend(position: .bottom, alignment: graphType == .bar ? .leading : .center, spacing: 25)
            .frame(height: 300)
            .padding(.top, 15)
            .animation(graphType == .bar ? .none : .snappy, value: graphType)
            
            Spacer(minLength: 0)
        }
        .padding()
    }
}

#Preview {
    ChartsView()
}
