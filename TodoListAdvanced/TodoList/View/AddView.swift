//
//  AddView.swift
//  TodoList
//
//  Created by Samarth Munde on 21/03/22.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""

    var body: some View {
        ScrollView{
            VStack {
                TextField("Add your task here....", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color("textFieldColor"))
                .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add Task 🖊 ")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }

    }
}
