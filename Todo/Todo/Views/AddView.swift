//
//  AddView.swift
//  Todo
//
//  Created by Marvin John on 12.05.24.
//

import SwiftUI

struct AddView: View {
    @State var text: String = ""
    @State var showAlert: Bool = false
    let viewModel: ItemViewModel
    var body: some View {
            VStack{
                TextFieldView(text: $text)
                
                Button("SAVE") {
                    if !text.isEmpty {
                        viewModel.addTodo(item: text)
                    } else {
                       showAlert = true
                    }
                     
                    
                   
                    text = ""
                }
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .font(.title2)
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                .background(Color.pink)
                .cornerRadius(10)
                .padding(.horizontal)
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Error"), message: Text("Please enter a message before saving."), dismissButton: .default(Text("OK")))
                })
                
                Spacer()
            }
            .navigationTitle("Add an Item 🖊️")
            .padding(.top)
             

            }
    }



struct TextFieldView: View {
    @Binding var text: String
    var body: some View {
        TextField("Add Todo", text: $text)
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

