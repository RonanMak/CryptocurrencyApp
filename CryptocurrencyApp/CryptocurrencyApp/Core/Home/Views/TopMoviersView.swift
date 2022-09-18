//
//  TopMoviersView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import SwiftUI

struct TopMoviersView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)

            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(0..<5, id: \.self) { _ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoviersView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviersView()
    }
}
