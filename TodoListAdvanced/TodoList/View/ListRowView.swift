//
//  ListRowView.swift
//  TodoList
//
//  Created by Samarth Munde on 20/03/22.
//

import SwiftUI

struct ListRowView: View {

    var itemModel: ItemModel
    var body: some View {
        
        HStack{
            Image(systemName: itemModel.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundColor(itemModel.isCompleted ? .green : .red)
            Text(itemModel.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First", isCompleted: false)
    static var item2 = ItemModel(title: "Second", isCompleted: true)
    
    static var previews: some View {
        Group{
            ListRowView(itemModel: item1)
            ListRowView(itemModel: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
