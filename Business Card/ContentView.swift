//
//  ContentView.swift
//  Business Card
//
//  Created by Can Kanbur on 4.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("bgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Image("can").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 150).clipShape(Circle())
                    .overlay(
                        Circle().stroke(.white, lineWidth: 6)
                    )
                Text("Can Kanbur").font(.system(size: 40)).fontWeight(.bold)
                    .foregroundColor(.white)
                Text("iOS Developer").font(.system(size: 28)).fontWeight(.semibold).foregroundColor(.white)
                Divider()
                InfoView(text: "0534 618 0007", iconName: "phone.fill")
                InfoView(text: "cankanbur1@gmail.com", iconName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let iconName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).fill(.white).frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: iconName).foregroundColor(.red)
                    Text(text)
                }
            )
            .padding(.all)
    }
}
