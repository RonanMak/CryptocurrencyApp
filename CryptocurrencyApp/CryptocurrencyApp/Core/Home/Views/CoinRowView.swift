//
//  CoinRowView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack {
            // market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)

            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)

            // coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text("BTC")
                    .font(.caption)

            }
            .padding(.leading, 6)

            Spacer()


            // coin price info
            VStack(alignment: .trailing, spacing: 4) {
                Text("$20,300.00")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text("-5.6%")
                    .font(.caption)
                    .foregroundColor(.red)
            }
            .padding(.trailing, 6)
        }
        .padding(.horizontal)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
