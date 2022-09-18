//
//  View.swift
//  CryptocurrencyApp
//
//  Created by Ronan Mak on 18/9/2022.
//

import UIKit
import SwiftUI

extension View {
    
    func pricePercentageColor(_ percentage: Double) -> Color {
        return percentage > 0 || percentage == 0 ? .green : .red
    }
}
