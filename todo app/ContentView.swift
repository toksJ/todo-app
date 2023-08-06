//
//  ContentView.swift
//  todo app
//
//  Created by TokaJaber on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State  var todos = [
        
        Todo(title: "feed the cat"),
        Todo(title: "buy food", subtitle: "banana, eggs, ice cream"),
        Todo(title: "finish unit 8 Xcode", subtitle: "finish by sunday"),
        Todo(title: "workout", isCompleted: true),
        Todo(title: "pray")
    ]
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {
    
            List($todos, editActions: [.all]) { $todo in
                    NavigationLink {
                        TodoDetailView(todos: $todo)
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
                                    
//                                }
//
//
//                            }
//                        }
                    }
//                    .onDelete { indexSet in
//                        todos.remove(atOffsets: indexSet)
//                        print("yayy!")
                    }
                }
//                .onMove { originalOffset, newOffset in
//                    todos.move(fromOffsets: originalOffset, toOffset: newOffset)
                }
            }
            .navigationTitle("Todos")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showSheet = true
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                newTodoView(sourceArray: $todos )
                    .presentationDetents([.medium])
            }
            
                }
            }
        }
        
       
            
          struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
    }
}
