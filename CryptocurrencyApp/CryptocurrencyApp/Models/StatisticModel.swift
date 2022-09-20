//
//  StatisticModel.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 20/9/2022.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
}
