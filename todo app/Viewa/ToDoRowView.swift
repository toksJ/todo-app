//
//  ToDoRowView.swift
//  todo app
//
//  Created by TokaJaber on 19/08/2023.
//

import SwiftUI

struct ToDoRowView: View {
    
    
    @Binding var todo: Todo
    
    
        var body: some View {
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
    }



struct ToDoRowView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRowView(todo: .constant(Todo(title: "Demo Todo")))
    }
}
