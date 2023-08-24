//
//  newTodoView.swift
//  todo app
//
//  Created by TokaJaber on 06/08/2023.
//

import SwiftUI

struct newTodoView: View {
    
    @State private var title = ""
    @State private var subtitile = ""
    @Binding var sourceArray: [Todo]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $title)
                TextField("subtitle", text: $subtitile)
                
            }
            
            Section {
                Button("save") {
                    let todo = Todo(title: title, subtitle : subtitile)
                    sourceArray.append(todo)
                    dismiss()
                    
                }
                Button("cancel", role: .destructive) {
                    dismiss()
                    
                }
            }
        }
    }
}

struct newTodoView_Previews: PreviewProvider {
    static var previews: some View {
        newTodoView(sourceArray: .constant([]))
    }
}
