//
//  StackView.swift
//  swiftUIDemo
//
//  Created by Girish Lukka on 10/03/2022.
//

import SwiftUI

struct StackView: View {
    
    var body: some View {
        
        ZStack {
            
            Image("bkgM")
            .resizable(resizingMode: .tile)
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(/*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
           
            
            HStack(alignment: .center){
                
                Spacer()
                Button(action: {
                    print("Left button is pressed")
                }) {
                    Text("Leftish Button")
                        .padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                Spacer()
                
                Button(action: {
                    print("UP button is pressed")
                }) {
                    Text("Down Button")
                        .padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                Spacer()
            }
            
            VStack {
                Spacer()
                Button(action: {
                    print("Left button is pressed")
                }) {
                    Text("Left Button")
                        .padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                Spacer()
                
                Button(action: {
                    print("Right button is pressed")
                }) {
                    Text("Right Button")
                        .padding()
                        .font(.body)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                Spacer()
            }
        }
        
        
    }
    
}
struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
