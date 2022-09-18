//
//  AllCoinsView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()

            HStack {
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)

            ScrollView {
                VStack {
                    ForEach(0..<30, id: \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
