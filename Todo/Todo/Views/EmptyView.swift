//
//  EmptyView.swift
//  Todo
//
//  Created by Marvin John on 12.05.24.
//

import SwiftUI

struct EmptyView: View {
    let viewModel: ItemViewModel
    var body: some View {
        VStack(spacing: 15){
            Text("There are no items!")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                .padding(.horizontal,20)
                .multilineTextAlignment(.center)
            
            NavigationLink {
                AddView(viewModel: viewModel)
            } label: {
                
                Text("Add Something 🥳")
                    .foregroundStyle(.white)
                    .frame( width: 280, height: 60)
                    .background(Color.pink
                    )
                    .cornerRadius(10)
            }
            .padding(.top)
            .shadow(color: .pink, radius: 40, y: 40)
            

           
            Spacer()
        }
        .padding(.top, 70)
    }
}

