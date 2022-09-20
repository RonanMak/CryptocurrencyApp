//
//  CoinDetailsViewModel.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 20/9/2022.
//

import Foundation

class CoinDetailsViewModel {

    private let coin: Coin

    var overviewSectionModel: CoinDetailSectionModel {

        // price stats

        // market cap stats

        // rank stats

        // volume stats

        return CoinDetailSectionModel(title: "Overview", stats: [])
    }

    var additionalDetailsSectionModel: CoinDetailSectionModel {

        // 24H high stats

        // 24H low stats

        // 24H price change stats

        // 24H high market cap change stats

        return CoinDetailSectionModel(title: "Additional Details", stats: [])
    }

    init(coin: Coin) {
        self.coin = coin
    }
}
