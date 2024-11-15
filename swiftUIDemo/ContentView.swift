//
//  ContentView.swift
//  swiftUIDemo
//
//  Created by Girish Lukka on 10/03/2022.
//

import SwiftUI
//struct ContentView: View {
//    var body: Text {
//        Text("Hello world)")
//       
//    }
//}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{

                NavigationLink(destination: TextView()){
                    Text("TextView11")
                        .padding()
                }
                NavigationLink(destination: StackView()){
                    Text("StackView")
                        .padding()
                }
                NavigationLink(destination: ImagesView()){
                    Text("ImagesView")
                        .padding()
                }

                NavigationLink(destination: SFSymbolsView()){
                    Text("SFSymbols")
                        .padding()
                }
                NavigationLink(destination: ButtonView()){
                    Text("Buttons")
                }

                NavigationLink(destination: EditButtonView()) {
                    Text("EditButtons")
                        .padding()
                }

                NavigationLink(destination:
                                Text("Dummy place holder")
                    //Text("Very long text that should not be displayed in a single line because it is not good design")
                    .padding()
                    .navigationBarTitle(Text("Detail"))
                ) {
                    Text("details about text")
                        .padding()
                }
                NavigationLink(destination: RecipeSumView()) {
                    Text("RecipeView")
                        .padding()
                }
                NavigationLink(destination: keyBDView()) {
                    Text("kbdView")
                        .padding()
                }
            }.navigationBarTitle(Text("Main View"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
