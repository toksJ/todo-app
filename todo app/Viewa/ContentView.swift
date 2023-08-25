//
//  ContentView.swift
//  todo app
//
//  Created by TokaJaber on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var todoManager = TodoManager()

    
//        @State  private var todos = [
//
//            Todo(title: "feed the cat"),
//            Todo(title: "buy food", subtitle: "banana, eggs, ice cream"),
//            Todo(title: "finish unit 8 Xcode", subtitle: "finish by sunday"),
//            Todo(title: "workout", isCompleted: true),
//            Todo(title: "pray")
//        ]
   
    
    var body: some View {
        TabView {
            MaibTodoListView(todoManager: todoManager)
                .tabItem {
                    Label("Friends", systemImage: "checkmark.cirlce.fill")
          }
            HowManyMoreView(todoManager: todoManager)
                .tabItem{
                    Label("Number of todos", systemImage: "number.cirle.fill")
                }
        }
    }
}
       
            
          struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
    }
}

