//
//  HowManyMoreView.swift
//  todo app
//
//  Created by TokaJaber on 25/08/2023.
//

import SwiftUI


struct HowManyMoreView: View {
    
    @ObservedObject var todoManager: TodoManager
    
    
    var body: some View {
        
        VStack {
            Text("you have completed ^[\(todoManager.numTodosDone) todos ](inflect: true)!")
                .font(.largeTitle)
            .multilineTextAlignment(.center)
     
            Text("you have ^[\(todoManager.numTodosNotDone) todos ](inflect: true) left")
            .padding()

//            .onAppear{
//                for todo in todoManager.todos {
//                        if todo.isCompleted {
//                            numTodosDone += 1
//                        }
//                    }
//                }
        }
            }
    }


struct HowManyMoreView_Previews: PreviewProvider {
    static var previews: some View {
        HowManyMoreView(todoManager: TodoManager())
    }
}
