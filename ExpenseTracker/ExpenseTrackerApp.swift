//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Nikita Sharma on 24/04/24.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
