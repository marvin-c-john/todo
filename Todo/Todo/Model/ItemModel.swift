//
//  ItemModel.swift
//  Todo
//
//  Created by Marvin John on 06.05.24.
//

import Foundation

struct ItemModel: Identifiable{
    let id = UUID()
    let title: String
    var isCompleted: Bool
    

}


