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
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $title)
                TextField("subtitle", text: $subtitile)
                
            }
            
            Section {
                Button("save") {
                    
                }
                Button("cancel", rold: .destructive) {
                    
                }
            }
        }
    }
}

struct newTodoView_Previews: PreviewProvider {
    static var previews: some View {
        newTodoView()
    }
}
