//
//  ListView.swift
//  TodoList
//
//  Created by Samarth Munde on 20/03/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items:[ItemModel] = [
        ItemModel(title: "My first task", isCompleted: false),
        ItemModel(title: "My second task", isCompleted: true),
        ItemModel(title: "My third task", isCompleted:false)
    ]
    
    
    var body: some View {
        List{
            ForEach(items) {item in
                ListRowView(itemModel: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 🔖")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from:IndexSet , to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
 

