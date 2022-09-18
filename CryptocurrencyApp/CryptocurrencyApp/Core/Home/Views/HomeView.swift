//
//  HomeView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // top movers view
                TopMoviersView()
                Divider()

                // all coins view
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
