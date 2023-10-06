//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Micah Hodge on 7/14/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
