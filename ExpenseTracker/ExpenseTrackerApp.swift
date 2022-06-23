//
//  ExpenceTracker.swift
//  ExpenseTracker
//
//  Created by Raphael Palacio on 6/22/22.
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
