//
//  ButtonView.swift
//  swiftUIDemo
//
//  Created by Girish Lukka on 10/03/2022.
//

import SwiftUI

struct ButtonView: View {
    @State var count = 0
    var body: some View {
        VStack{
            Text("Welcome to button view")
                .padding()
            Text("Current count value: \(count)")
                .padding()
            Button(action: {
               self.count += 1
            }){
               Text("Tap to Increment count")
               .fontWeight(.bold)
               .foregroundColor(Color.white)
               .padding()
               .background(Color.black)
                
               .clipShape(Capsule())
                   
            }
            
            
        }.navigationBarTitle("Button View", displayMode: .inline)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
