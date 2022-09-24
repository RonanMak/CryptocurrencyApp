//
//  Date.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 21/9/2022.
//

import Foundation

extension Date {

    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
}
