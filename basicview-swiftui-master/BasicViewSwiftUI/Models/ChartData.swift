//
//  ChartData.swift
//  BasicViewSwiftUI
//
//  Created by Leo Wirasanto Laia on 09/03/24.
//  Copyright © 2024 Leo Wirasanto. All rights reserved.
//

import Foundation

struct ActivityHistory: Identifiable {
    var id = UUID()
    let day: Date
    let totalEnergyInKw: Double
    let totalPaymentInPounds: Double
    
    init(day: Date, totalEnergyInKw: Double) {
        self.day = day
        self.totalEnergyInKw = totalEnergyInKw
        self.totalPaymentInPounds = (totalEnergyInKw * 49)/100
    }
}

enum ActivityDataPoint {
    static let last30Days = [
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -30, to: Date()) ?? Date(), totalEnergyInKw: 17),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -29, to: Date()) ?? Date(), totalEnergyInKw: 4),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -28, to: Date()) ?? Date(), totalEnergyInKw: 21),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -27, to: Date()) ?? Date(), totalEnergyInKw: 1),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -26, to: Date()) ?? Date(), totalEnergyInKw: 11),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -25, to: Date()) ?? Date(), totalEnergyInKw: 11),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -24, to: Date()) ?? Date(), totalEnergyInKw: 4),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -23, to: Date()) ?? Date(), totalEnergyInKw: 10),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -22, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -21, to: Date()) ?? Date(), totalEnergyInKw: 20),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -20, to: Date()) ?? Date(), totalEnergyInKw: 9),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -19, to: Date()) ?? Date(), totalEnergyInKw: 20),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -18, to: Date()) ?? Date(), totalEnergyInKw: 20),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -17, to: Date()) ?? Date(), totalEnergyInKw: 1),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -16, to: Date()) ?? Date(), totalEnergyInKw: 4),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -15, to: Date()) ?? Date(), totalEnergyInKw: 14),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -14, to: Date()) ?? Date(), totalEnergyInKw: 10),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -13, to: Date()) ?? Date(), totalEnergyInKw: 16),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -12, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -11, to: Date()) ?? Date(), totalEnergyInKw: 2),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -10, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -9, to: Date()) ?? Date(), totalEnergyInKw: 4),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -8, to: Date()) ?? Date(), totalEnergyInKw: 2),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), totalEnergyInKw: 3),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), totalEnergyInKw: 21),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), totalEnergyInKw: 1)
    ]
    
    static let last7Days = [
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), totalEnergyInKw: 3),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), totalEnergyInKw: 21),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), totalEnergyInKw: 1)
    ]
    
    static let last2Weeks = [
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -15, to: Date()) ?? Date(), totalEnergyInKw: 14),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -14, to: Date()) ?? Date(), totalEnergyInKw: 10),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -13, to: Date()) ?? Date(), totalEnergyInKw: 16),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -12, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -11, to: Date()) ?? Date(), totalEnergyInKw: 2),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -10, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -9, to: Date()) ?? Date(), totalEnergyInKw: 4),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -8, to: Date()) ?? Date(), totalEnergyInKw: 2),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(), totalEnergyInKw: 7),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(), totalEnergyInKw: 3),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(), totalEnergyInKw: 21),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(), totalEnergyInKw: 6),
        ActivityHistory(day: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(), totalEnergyInKw: 1)
    ]
}

enum ChartFilterSegment: String {
    case sevenDays = "7 days"
    case twoWeeks = "2 weeks"
    case month = "Month"
    
    var dataPoint: [ActivityHistory] {
        switch self {
        case .sevenDays:
            ActivityDataPoint.last7Days
        case .twoWeeks:
            ActivityDataPoint.last2Weeks
        case .month:
            ActivityDataPoint.last30Days
        }
    }
}
