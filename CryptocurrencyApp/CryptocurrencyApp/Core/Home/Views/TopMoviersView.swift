//
//  TopMoviersView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import SwiftUI

struct TopMoviersView: View {

    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) { topMovingCoin in
                        NavigationLink {
                            CoinDetailsView()
                        } label: {
                            TopMoversItemView(topMovingCoin: topMovingCoin)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

//struct TopMoviersView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoviersView()
//    }
//}
