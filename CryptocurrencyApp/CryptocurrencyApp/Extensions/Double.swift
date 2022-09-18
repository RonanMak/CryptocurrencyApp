//
//  Double.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import Foundation

extension Double {

    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }

    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }

    func toCurrencyWith2Decimals() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }

    func toPercentString() -> String {
        guard let numberString = numberFormatter.string(for: self) else { return "" }
        return numberString + "%"
    }
}
