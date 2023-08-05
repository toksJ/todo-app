//
//  ContentView.swift
//  todo app
//
//  Created by TokaJaber on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
    Todo(title: "feed the cat"),
    Todo(title: "buy food"),
    Todo(title: "finish unit 8 Xcode"),
    Todo(title: "workout", isCompleted: true),
    Todo(title: "pray"),
 
    ]
    
    
    var body: some View {
        
        NavigationStack {
            List(todos ) { todo in
                /*@START_MENU_TOKEN@*/Text(todo.title)/*@END_MENU_TOKEN@*/
            }
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
