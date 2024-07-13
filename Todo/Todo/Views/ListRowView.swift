//
//  ListRowView.swift
//  Todo
//
//  Created by Marvin John on 06.05.24.
//

import SwiftUI

struct ListRowView: View {
    
   @State var item: ItemModel
    
    var body: some View {
        HStack{
            Button {
                item.isCompleted = true 
              
            } label: {
                Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                    .foregroundStyle(item.isCompleted ? .green : .red)
            }

            Text(item.title)
        }
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "Hey", isCompleted: false))
}
