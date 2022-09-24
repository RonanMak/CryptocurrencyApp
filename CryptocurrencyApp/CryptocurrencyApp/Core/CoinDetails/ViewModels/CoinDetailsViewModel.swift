//
//  CoinDetailsViewModel.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 20/9/2022.
//

import Foundation

class CoinDetailsViewModel {

    private let coin: Coin

    // chart config
    var chartData = [ChartData]()

    var startDate = Date()
    var endDate = Date()
    var minPrice = 0.0
    var maxPrice = 0.0

    var xAxisValues = [Date]()
    var yAxisValues = [Double]()

    var overviewSectionModel: CoinDetailSectionModel {

        // price stats
        let price = coin.currentPrice.toCurrencyWith2Decimals()
        let pricePercentChange = coin.priceChangePercentage24H
        let priceStats = StatisticModel(
            title: "Current",
            value: price,
            percentageChange: pricePercentChange
        )

        // market cap stats
        let marketCap = coin.marketCap ?? 0.00
        let marketCapPercentChange = coin.marketCapChangePercentage24H
        let marketCapStats = StatisticModel(
            title: "Market Cap",
            value: String(marketCap),
            percentageChange: marketCapPercentChange
        )

        // rank stats
        let rank = coin.marketCapRank
        let rankStat = StatisticModel(
            title: "Rank",
            value: "\(rank)",
            percentageChange: nil
        )

        // volume stats
        let volume = coin.totalVolume
        let volumeStat = StatisticModel(
            title: "Volume",
            value: String(volume ?? 0.00),
            percentageChange: nil
        )

        return CoinDetailSectionModel(
            title: "Overview",
            stats: [priceStats, marketCapStats, rankStat, volumeStat]
        )
    }

    var additionalDetailsSectionModel: CoinDetailSectionModel {

        // 24H high stats
        let high = coin.high24H?.toCurrencyWith2Decimals() ?? "n/a"
        let highStat = StatisticModel(
            title: "24H High",
            value: high,
            percentageChange: nil
        )
        // 24H low stats
        let low = coin.low24H?.toCurrencyWith2Decimals() ?? "n/a"
        let lowStat = StatisticModel(
            title: "24h Low",
            value: low,
            percentageChange: nil
        )
        // 24H price change stats
        let priceChange24H = coin.priceChange24H.toCurrencyWith2Decimals()
        let percentChange24H = coin.priceChangePercentage24H
        let priceChangeStat = StatisticModel(
            title: "24H Price Change",
            value: priceChange24H,
            percentageChange: percentChange24H
        )
        // 24H high market cap change stats
        let marketCapChange = coin.marketCapChangePercentage24H?.toCurrencyWith2Decimals() ?? "n/a"
        let marketCapChangePercent = coin.marketCapChangePercentage24H
        let marketStat = StatisticModel(
            title: "24H Market Cap Change",
            value: marketCapChange,
            percentageChange: marketCapChangePercent
        )

        return CoinDetailSectionModel(title: "Additional Details", stats: [highStat, lowStat, priceChangeStat, marketStat])
    }

    init(coin: Coin) {
        self.coin = coin
        configureChartData()
    }

    func configureChartData() {
        guard let priceData = coin.sparklineIn7D?.price else { return }
        var index = 0

        self.minPrice = priceData.min()!
        self.maxPrice = priceData.max()!
        self.endDate = Date(coinGeckoString: coin.lastUpdated ?? "")
        self.startDate = endDate.addingTimeInterval(-7 * 60 * 60 * 24)
        self.yAxisValues = [minPrice, (minPrice + maxPrice ) / 2 ,maxPrice]
        self.xAxisValues = [startDate, endDate]

        for price in priceData.reversed() {
            let date = endDate.addingTimeInterval(-1 * 60 * 60 * Double(index))

            let chartDataItem = ChartData(date: date, value: price)
            self.chartData.append(chartDataItem)
            index += 1
        }
    }
}
/*

 [10, 20, 30 , 40]  - prices

 [40, 30, 20 , 10]  - reversed prices
 [4, 3, 2, 1]       - dates (need to figure out how to do this

 Result:
 [(4,40), (3,30)]   - chart data

 */
