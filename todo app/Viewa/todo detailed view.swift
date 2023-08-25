//
//  todo detailed view.swift
//  todo app
//
//  Created by TokaJaber on 05/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todos: Todo
    @State private var iconSize = 0.0

    var body: some View {
        Form {
            TextField("Title", text: $todos.title)
            TextField("Subtitle", text: $todos.subtitle)
            Toggle("are they still loved ", isOn: $todos.isCompleted)
            Toggle("are they still in IOs with me  ", isOn: $todos.isCompleted)
            Text("how much i lovem this persn is  ^[\(Int(iconSize)) much ](inflect: true)")
            Slider(value: $iconSize, in: 0...10)
            


        }
        .navigationTitle("Frieds Ranking 👩‍🦯")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TodoDetailView(todos: .constant(Todo(title: "The homie ")))
        }
    }
}

 
