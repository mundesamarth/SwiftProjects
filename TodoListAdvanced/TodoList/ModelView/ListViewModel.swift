//
//  ListViewModel.swift
//  TodoList
//
//  Created by Samarth Munde on 21/03/22.
//

import Foundation


class ListViewModel{
 
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title: "My first task", isCompleted: false),
            ItemModel(title: "My second task", isCompleted: true),
            ItemModel(title: "My third task", isCompleted:false)
        ]
    
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from:IndexSet , to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}
