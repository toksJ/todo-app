//
//  todo detailed view.swift
//  todo app
//
//  Created by TokaJaber on 05/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo = Todo
    
    var body: some View {
        Form {
            TextField("Title", text: $todo.title)
            TextField("Subtitle", text: $todo.subtitle)
            Toggle("is completed", isOn: $todo.isCompleted)

        }
        .navigationTitle("Todo Details")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TodoDetailView(todo: .constant(Todo(title: "feed the cat")))
        }
    }
}

