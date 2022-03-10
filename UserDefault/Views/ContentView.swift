//
//  ContentView.swift
//  UserDefault
//
//  Created by Ara Mac Mini on 2022/03/07.
//

import SwiftUI

struct ContentView: View {
    
   
    @EnvironmentObject var dataViewModel: DataViewModel
    
    var body: some View {
        VStack {
            
            List{
                ForEach(dataViewModel.itemArray){ item in
                    CustomCell(isCompleted: item.isCompleted, text: item.text)
                   
                }
                .onMove(perform: dataViewModel.moveItem)
                .onDelete(perform: dataViewModel.deleteItem)
            }
            .listStyle(.plain)

        }
        .navigationTitle(Text("Todo List🧐"))
        .toolbar {
            ToolbarItemGroup(placement: .automatic) {
                HStack{
                    EditButton()
                    Spacer()
                    NavigationLink("Add", destination: AddItemView())
                    
//                    Button(action: {}, label:{
//                        NavigationLink("Add", destination: AddItemView())
//                    })
                    
                }
            }
        }
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        .environmentObject(DataViewModel())
        
    }
}
