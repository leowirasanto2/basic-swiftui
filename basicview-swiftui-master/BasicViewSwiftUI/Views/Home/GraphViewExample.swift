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
    var dataPoints: [DummyDataPoint] = generateDummyDataPoints(count: 22)
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Graph Example")
                .font(.headline)
                .fontWeight(.semibold)
            
            Divider()
            
            Chart {
                ForEach(dataPoints) { point in
                    LineMark(
                        x: .value("Type", point.count),
                        y: .value("Count", point.type)
                    )
                }
            }
            .chartLegend(position: .trailing, alignment: .top)
            .frame(height: 300)
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    GraphViewExample()
}

func generateDummyDataPoints(count: Int) -> [DummyDataPoint] {
    let dataTypes = ["pagi", "siang", "sore", "malam"]
    var dataPoints = [DummyDataPoint]()
    
    for counter in 0..<count {
        let randomType = dataTypes.randomElement()!
        let index = Double(counter)
        dataPoints.append(DummyDataPoint(type: randomType, count: index))
    }
    return dataPoints
}

struct DummyDataPoint: Identifiable {
    var id = UUID()
    var type: String
    var count: Double
}


