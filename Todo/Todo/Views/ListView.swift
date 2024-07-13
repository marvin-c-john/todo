//
//  ListView.swift
//  Todo
//
//  Created by Marvin John on 06.05.24.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel = ItemViewModel()
    var body: some View {
        NavigationView{
            VStack{
                if viewModel.todos.isEmpty{
                    EmptyView(viewModel: viewModel)
                    
                }  else{
                    List {
                        
                        ForEach(viewModel.todos) { item in
                            ListRowView(item: item)
                        }
                        .onDelete(perform:viewModel.delete)
                    }
                    
                    .listStyle(.inset)
              
                }
            }
            .navigationTitle("Todo List 📝")
            .toolbar(content: {
                ToolbarItem( placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        NavigationLink("Add") {
                            AddView(viewModel: viewModel)
                        }
                    }
                    
                }
            })
        }
        .tint(.pink)
    }
}


#Preview {
    ListView()
}
