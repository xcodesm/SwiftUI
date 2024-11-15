//
//  SFSymbolsView.swift
//  swiftUIDemo
//
//  Created by Girish Lukka on 10/03/2022.
//

import SwiftUI

struct SFSymbolsView: View {
    @State private var wifi_on = false
    
    var body: some View {
        VStack {
            HStack{
                
                Image(systemName: "g")
                Image(systemName: "i")
                Image(systemName: "r")
                Image(systemName: "i")
                Image(systemName: "s")
                Image(systemName: "h")
                
                
            }.symbolVariant(.fill.circle)
                .foregroundStyle(.white, .black)
                .font(.largeTitle)
            
            HStack{
                Image(systemName: "l.circle.fill")
                Image(systemName: "u.circle.fill")
                    .foregroundStyle(.red)
                Image(systemName: "k.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                //                    .accessibility(identifier: "Letter K")
                Image(systemName: "a.circle.fill")
                    .accessibility(identifier: "Letter a")
            }.foregroundColor(.red)
                .font(.title)
                .padding()
            HStack{
                Image(systemName: "face.smiling.fill")
//                    .resizable().scaledToFit()
                    .foregroundColor(.yellow)
                Image(systemName: "ant.circle.fill")
            }.symbolVariant(.fill)
                .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
            
            
            Toggle(isOn: $wifi_on) {
                Label("Wifi", systemImage: "wifi")
            }.foregroundStyle(wifi_on ? .blue : .secondary)
                .padding(.all)
            
            
        }
        
    }
}

struct SFSymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsView()
    }
}
