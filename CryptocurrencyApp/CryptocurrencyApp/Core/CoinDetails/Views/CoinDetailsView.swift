//
//  CoinDetailsView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 19/9/2022.
//

import SwiftUI

struct CoinDetailsView: View {

    let viewModel: CoinDetailsViewModel

    init(coin: Coin) {
        self.viewModel = CoinDetailsViewModel(coin: coin)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                // Chart

                // Overview
                CoinDetailsSection(model: viewModel.overviewSectionModel)
                    .padding(.vertical)

                // Addictional details
                CoinDetailsSection(model: viewModel.additionalDetailsSectionModel)
                    .padding(.vertical)
            }
            .padding()
            .navigationTitle("Bitcoin")
        }
    }
}

//struct CoinDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinDetailsView(coin: dev.coin)
//    }
//}
