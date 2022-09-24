//
//  ChartData.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 21/9/2022.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID().uuidString
    let date: Date
    let value: Double
}
