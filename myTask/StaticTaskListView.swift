//
//  TaskListView.swift
//  myTask
//
//  Created by Denis Arsenault 10/12/2025.
//

import SwiftUI

struct StaticTaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
        }
        
    }
}

#Preview {
    StaticTaskListView(title: "All", tasks: Task.examples())
}
