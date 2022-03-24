//
//  CategoryModel.swift
//  TouchDown
//
//  Created by 임성빈 on 2022/03/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
