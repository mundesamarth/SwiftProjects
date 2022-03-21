//
//  itemModel.swift
//  TodoList
//
//  Created by Samarth Munde on 21/03/22.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString 
    var title: String
    var isCompleted: Bool
    
}
