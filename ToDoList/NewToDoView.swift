//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//
import SwiftUI
import SwiftData
struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: toDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task title:")
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            Button {
                addToDo()
                showNewTask = false
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
    func addToDo() {
        let toDo = ToDoList.toDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
        
    }
    }
    
    #Preview {
        NewToDoView(showNewTask: .constant(false), toDoItem: toDoItem(title:"", isImportant: false))
    }

