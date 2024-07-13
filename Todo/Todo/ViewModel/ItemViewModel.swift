//
//  ItemViewModel.swift
//  Todo
//
//  Created by Marvin John on 12.05.24.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var todos = [ItemModel]()
    
    static let sampleTodo = ItemModel(title: "Test", isCompleted: false)
    
    func addTodo(item: String) {
        let newItem = ItemModel(title: item, isCompleted: false)
        todos.append(newItem)
    }
    
    func delete(at offsets: IndexSet){
        todos.remove(atOffsets: offsets)
    }
    
}
