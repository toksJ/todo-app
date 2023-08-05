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
        Todo(title: "buy food", subtitle: "banana, eggs, ice cream"),
        Todo(title: "finish unit 8 Xcode", subtitle: "finish by sunday"),
        Todo(title: "workout", isCompleted: true),
        Todo(title: "pray"),
        
    ]
    
    
    var body: some View {
        
        NavigationStack {
            List($todos) { $todo in
                NavigationLink {
                    TodoDetailView(todo: $todo)
                } label: {
                    HStack {
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                todo.isCompleted.toggle()
                            }
                        VStack(alignment: .leading, spacing: 5) {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted)
                            if !todo.subtitle.isEmpty {
                                Text(todo.subtitle)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    .strikethrough(todo.isCompleted)
                                
                            }
                            
                            
                        }
                    }
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
}
