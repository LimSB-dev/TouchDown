//
//  Shop.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
