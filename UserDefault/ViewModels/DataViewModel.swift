//
//  DataViewModel.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/10.
//

import Foundation

class DataViewModel: ObservableObject {
    
    @Published var itemArray : [DataModel] = []{
        didSet{
            saveItem()
        }
    }
                                
    let itemKeys = "item_array"
    
    init(){
        getItem()
    }
    
    func getItem(){
//        let newItems = [DataModel(text: "Hello", isCompleted: true),
//                        DataModel(text: "Good Morning", isCompleted: false),
//                        DataModel(text: "araya", isCompleted: false)
//        ]
//        itemArray.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemKeys),
            let dataItems = try? JSONDecoder().decode([DataModel].self, from: data) else{return}
        
        self.itemArray = dataItems

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
 
    func updateItem(item: DataModel){
        if let index = itemArray.firstIndex(where: { $0.id == item.id}) {
            itemArray[index] = item.updateCompletion()
        }
    }
    
    func saveItem(){
        
        if let encodeData = try?JSONEncoder().encode(itemArray){
            UserDefaults.standard.set(encodeData, forKey: itemKeys)
        }
            
        
    }
    
    
}
