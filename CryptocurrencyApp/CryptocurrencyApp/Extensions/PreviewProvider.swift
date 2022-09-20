//
//  PreviewProvider.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 20/9/2022.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()

    let stat1 = StatisticModel(
        title: "current price",
        value: "$21,543.00",
        percentageChange: 1.67
    )

    let stat2 = StatisticModel(
        title: "rank",
        value: "$19,143.00",
        percentageChange: 1.7
    )

    let sectionModel = CoinDetailSectionModel(
        title: "overview",
        stats: [
            StatisticModel(
                title: "current price",
                value: "$21,543.00",
                percentageChange: 1.67),
            StatisticModel(
                title: "rank",
                value: "$19,143.00",
                percentageChange: 1.7)
        ])

//    let coin = Coin(id: <#T##String#>, symbol: <#T##String#>, name: <#T##String#>, image: <#T##String#>, currentPrice: <#T##Double#>, marketCapRank: <#T##Int#>, marketCap: <#T##Double?#>, fullyDilutedValuation: <#T##Double?#>, totalVolume: <#T##Double?#>, high24H: <#T##Double?#>, low24H: <#T##Double?#>, priceChange24H: <#T##Double#>, priceChangePercentage24H: <#T##Double#>, marketCapChange24H: <#T##Double?#>, marketCapChangePercentage24H: <#T##Double?#>, circulatingSupply: <#T##Double?#>, totalSupply: <#T##Double?#>, maxSupply: <#T##Double?#>, ath: <#T##Double?#>, athChangePercentage: <#T##Double?#>, athDate: <#T##String?#>, atl: <#T##Double?#>, atlChangePercentage: <#T##Double?#>, atlDate: <#T##String?#>, lastUpdated: <#T##String?#>, sparklineIn7D: <#T##SparklineIn7D?#>, priceChangePercentage24HInCurrency: <#T##Double?#>)
}
