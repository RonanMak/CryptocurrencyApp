//
//  CoinDetailsSection.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 19/9/2022.
//

import SwiftUI

struct CoinDetailsSection: View {

    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            Text("overview")
                .font(.title).bold()
                .frame(maxWidth: .infinity, alignment: .leading)

            LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                ForEach(0..<4, id: \.self) { _ in
                    StatisticView()
                }
            }
        }
    }
}

struct CoinDetailsSection_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsSection()
    }
}
