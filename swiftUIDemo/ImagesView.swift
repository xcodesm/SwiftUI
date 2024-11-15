//
//  ImagesView.swift
//  swiftUIDemo
//
//  Created by Girish Lukka on 10/03/2022.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        VStack{
            Image("dogs1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Image("dog-and-nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height:200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red , lineWidth: 6))
            .shadow(radius: 10)
            
            Image(uiImage: getImageFromUIImage(image: "dog2"))
            .resizable()
            .frame(width: 200, height: 200)
            .aspectRatio(contentMode: .fit)
            .opacity(/*@START_MENU_TOKEN@*/5.8/*@END_MENU_TOKEN@*/)
                
        }
    }
}
func getImageFromUIImage(image:String) -> UIImage {
    guard let img = UIImage(named: image) else {
        fatalError("Unable to load image")
    }
    return img
}
struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
       ImagesView()
    }
}
