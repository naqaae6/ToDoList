//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData
@Model
class toDoItem {
    var title: String
    var isImportant: Bool
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}
