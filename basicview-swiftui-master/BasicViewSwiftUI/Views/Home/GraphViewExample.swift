//
//  GraphViewExample.swift
//  BasicViewSwiftUI
//
//  Created by Leo Wirasanto Laia on 07/03/24.
//  Copyright © 2024 Leo Wirasanto. All rights reserved.
//


import Charts
import SwiftUI

struct GraphViewExample: View {
    @State var chart: ChartFilterSegment = .sevenDays
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Graph Example")
                .font(.headline)
                .fontWeight(.semibold)
            
            Divider()
            
            VStack {
                HStack {
                    Text("Summary")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Picker("", selection: $chart) {
                        Text(ChartFilterSegment.sevenDays.rawValue)
                            .tag(ChartFilterSegment.sevenDays)
                        Text(ChartFilterSegment.twoWeeks.rawValue)
                            .tag(ChartFilterSegment.twoWeeks)
                        Text(ChartFilterSegment.month.rawValue)
                            .tag(ChartFilterSegment.month)
                    }
                    .padding(.leading, 64)
                    .pickerStyle(.segmented)
                }
                Chart {
                    ForEach(chart.dataPoint) { point in
                        LineMark(
                            x: .value("Date", point.day),
                            y: .value("Total Energy", point.totalEnergyInKw)
                        )
                        .foregroundStyle(by: .value("Value", "Total Energy"))
                        
                        LineMark(
                            x: .value("Date", point.day),
                            y: .value("Total paid", point.totalPaymentInPounds)
                        )
                        .foregroundStyle(by: .value("Value", "Total paid"))
                    }
                    .interpolationMethod(.linear)
                    .lineStyle(StrokeStyle(lineWidth: 2))
                }
                .chartYAxisLabel(position: .leading) {
                    Text("Total energy")
                }
                .chartXAxisLabel(position: .bottom, alignment: .center) {
                    Text("Day")
                }
                .chartXAxis {
                    AxisMarks(position: .bottom, values: .stride(by: .day, count: 2)) { _ in
                        AxisTick()
                        AxisGridLine()
                        AxisValueLabel(format: .dateTime.day(), centered: true)
                    }
                }
                .chartLegend(position: .bottom, alignment: .top, spacing: 16)
                .frame(height: 300)
            .padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: 18))
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    GraphViewExample()
}
