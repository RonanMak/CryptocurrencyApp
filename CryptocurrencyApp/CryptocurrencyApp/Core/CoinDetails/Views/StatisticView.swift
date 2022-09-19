//
//  StatisticView.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 19/9/2022.
//

import SwiftUI

struct StatisticView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Current Price")
                .font(.caption)

            Text("$21,546.00")
                .font(.headline)

            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption)

                Text("1.23%")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor(.green)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}
