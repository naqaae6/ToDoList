import SwiftData
import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [toDoItem]
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer()//push left or right
                Button{
                    withAnimation{
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }//end of the HStack
            .padding()
            Spacer()//push up
            List {
                ForEach(toDos) {toDoItem in
                    Text(toDoItem.title)
                }
            }
        }//end of the VStack
        if showNewTask {
            NewToDoView()
            }
        }
    }
#Preview {
  ContentView()
        .modelContainer(for: toDoItem.self, inMemory:true)
}
