//
//  MaibTodoListView.swift
//  todo app
//
//  Created by TokaJaber on 24/08/2023.
//

import SwiftUI

struct MaibTodoListView: View {
    
    @ObservedObject var todoManager: TodoManager
    @State private var showSheet = false
    @State private var showConfirmAlert = true
    
    
    
    var body: some View {
        NavigationStack {
    
            
            
            List($todoManager.todos , editActions: [.all]) { $todo in
                ToDoRowView(todo: $todo)
            }
            .navigationTitle("Friends")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    
                   
                    
                    
                    EditButton()
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    #if DEBUG
                                       Button{
                                           showConfirmAlert = true
                                       } label: {
                                           Image(systemName: "clipboard")
                                       }
                    #endif
                    
                                       

                    
                    
                    Button {
                        showSheet = true
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                newTodoView(sourceArray: $todoManager.todos )
                    .presentationDetents([.large])
            }
            .alert("load sample date? Warning: All esisting data will be deleted" , isPresented: $showConfirmAlert) {
                Button("Replace", role: .destructive) {
                    todoManager.loadSampleDate()
                }
            }
                }
    }
}

struct MaibTodoListView_Previews: PreviewProvider {
    static var previews: some View {
        MaibTodoListView(todoManager: TodoManager())
    }
}
