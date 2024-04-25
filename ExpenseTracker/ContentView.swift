//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Nikita Sharma on 24/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView{
                ScrollView{
                    VStack(alignment: .leading, spacing: 24) {
                        Text("Expense Tracker")
                            .font(.title2)
                            .bold()
                        
                        // MARK: Transaction List
                        RecentTransactionList()
                    }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                .background(Color.appbackground)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    // MARK: Notification Icon
                    ToolbarItem{
                        Image(systemName: "bell.badge")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.appicon, .primary)
                    }
                }
            }
            .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()

    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
        .environmentObject(transactionListVM)
    }
}
