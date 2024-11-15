//
//  EdditButtonView.swift
//  swiftUIDemo
//
//  Created by Girish Lukka on 10/03/2022.
//

import SwiftUI

struct EditButtonView: View {
    @State private var animals = ["Cats", "Dogs", "Goats", "Cats"]
  
    var body: some View {
        
        let _ = print(animals)
        Print("Here I am", animals)
        List{
            ForEach(animals, id: \.self){ animal in
                Text(animal)
            }.onDelete(perform: removeAnimal)
        }
        .navigationBarItems(trailing:EditButton())
        .navigationBarTitle(Text("EditButtonView"), displayMode: .inline)
    }
    func removeAnimal(at offsets: IndexSet){
        animals.remove(atOffsets: offsets)
    }
}
extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
