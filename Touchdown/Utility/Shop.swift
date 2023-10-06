//
//  Shop.swift
//  Touchdown
//
//  Created by Micah Hodge on 7/15/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
