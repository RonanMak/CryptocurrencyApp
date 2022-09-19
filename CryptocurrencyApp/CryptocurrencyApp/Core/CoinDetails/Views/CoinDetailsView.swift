//
//  CoinDetailsView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 19/9/2022.
//

import SwiftUI

struct CoinDetailsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                // Chart

                // Overview
                CoinDetailsSection()
                    .padding(.vertical)

                // Addictional details
                CoinDetailsSection()
                    .padding(.vertical)
            }
            .padding()
            .navigationTitle("Bitcoin")
        }
    }
}

struct CoinDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailsView()
    }
}
