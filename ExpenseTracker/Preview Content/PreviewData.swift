//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Nikita Sharma on 24/04/24.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "01/24/2024", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.99, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)

