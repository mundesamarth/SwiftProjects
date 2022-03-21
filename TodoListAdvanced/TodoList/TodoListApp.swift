//
//  TodoListApp.swift
//  TodoList
//
//  Created by Samarth Munde on 20/03/22.
//

import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}
