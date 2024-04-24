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
                        Text("Placeholder")
                            .font(.title2)
                            .bold()
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

#Preview {
    ContentView()
}
