//
//  Todo.swift
//  todo app
//
//  Created by TokaJaber on 04/08/2023.
//

import Foundation

struct Todo: Identifiable {
//    identifiable cuz we have multinple todos in content view
    
   var id = UUID()
    var title: String
    var isCompleted = false
    
}
