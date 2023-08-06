//
//  todo detailed view.swift
//  todo app
//
//  Created by TokaJaber on 05/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todos: Todo
    
    var body: some View {
        Form {
            TextField("Title", text: $todos.title)
            TextField("Subtitle", text: $todos.subtitle)
            Toggle("is completed", isOn: $todos.isCompleted)

        }
        .navigationTitle("Todo Details")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TodoDetailView(todos: .constant(Todo(title: "feed the cat")))
        }
    }
}

