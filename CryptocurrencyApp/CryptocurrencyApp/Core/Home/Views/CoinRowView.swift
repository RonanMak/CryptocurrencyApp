//
//  CoinRowView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {

    let coin: Coin

    var body: some View {
        HStack {
            // market cap rank
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)

            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)

            // coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text(coin.symbol.uppercased())
                    .font(.caption)

            }
            .padding(.leading, 6)

            Spacer()

            // coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrencyWith2Decimals())
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.caption)
                    .foregroundColor(pricePercentageColor(coin.priceChangePercentage24H))
            }
            .padding(.trailing, 6)
        }
        .padding(.horizontal)
    }
}

//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
