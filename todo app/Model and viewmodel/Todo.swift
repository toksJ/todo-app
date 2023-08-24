//
//  Todo.swift
//  todo app
//
//  Created by TokaJaber on 04/08/2023.
//

import Foundation

struct Todo: Identifiable, Codable {
//    identifiable cuz we have multinple todos in content view
//    codable so the file version can be written to ios
    
   var id = UUID()
    var title: String
    var subtitle = ""
//    so sub is empyu user can chnage
    var isCompleted = false
}
