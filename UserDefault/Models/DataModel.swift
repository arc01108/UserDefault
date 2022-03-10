//
//  DataModel.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/10.
//

import Foundation

struct DataModel:Identifiable {
    var id = UUID().uuidString
    var text: String
    var isCompleted: Bool
}
