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
    
    init(id: String = UUID().uuidString, text: String, isCompleted: Bool){
        
        self.id = id
        self.text = text
        self.isCompleted = isCompleted
        
    }
    
    func updateCompletion() -> DataModel {
        return DataModel(id: id, text: text, isCompleted: !isCompleted)
        
    }
    
}
