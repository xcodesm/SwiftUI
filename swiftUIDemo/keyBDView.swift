//
//  keyBDView.swift
//  swiftUIDemo
//
//  Created by girish lukka on 05/09/2023.
//

import SwiftUI

struct keyBDView: View {
    @State var text: String = ""
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: .infinity, height: 100, alignment: .center)
                
           
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            TextField("Title", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .ignoresSafeArea(.keyboard, edges: .bottom)
            VStack{
                TextField("Title", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                TextField("Title", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                TextField("Title", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                TextField("Title", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                TextField("Title", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    .ignoresSafeArea(.keyboard, edges: .bottom)
            }
        }
    }
}

struct keyBDView_Previews: PreviewProvider {
    static var previews: some View {
        keyBDView()
    }
}
