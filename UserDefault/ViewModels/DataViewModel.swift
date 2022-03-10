//
//  DataViewModel.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/10.
//

import Foundation

class DataViewModel: ObservableObject {
    
    @Published var itemArray = [DataModel]()
    
    init(){
        getItem()
    }
    
    func getItem(){
        let newItems = [DataModel(text: "Hello", isCompleted: true),
                        DataModel(text: "Good Morning", isCompleted: false),
                        DataModel(text: "araya", isCompleted: false)
        ]
        itemArray.append(contentsOf: newItems)

    }
 
    
    func deleteItem(indexSet: IndexSet){
        
        itemArray.remove(atOffsets: indexSet)
        
    }
    
    func moveItem(from: IndexSet, to: Int){
        itemArray.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(text: String){
        
        let item = DataModel(text: text, isCompleted: false)
        itemArray.append(item)
        
    }
    
}
