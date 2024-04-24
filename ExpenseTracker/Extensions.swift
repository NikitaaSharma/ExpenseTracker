//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Nikita Sharma on 24/04/24.
//

import Foundation
import SwiftUI

extension Color {
    static let appbackground = Color("Background")
    static let appicon = Color("Icon")
    static let apptext = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNumericIndia: DateFormatter = {
        print("Initialising DateFormatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "DD/mm/yyyy"
        
        return formatter
    }()
}

extension String {
    func dateParse() -> Date {
        guard let parseDate = DateFormatter.allNumericIndia.date(from: self) else { return Date() }
        
        return parseDate
    }
}
