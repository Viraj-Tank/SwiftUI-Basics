//
//  NavigationView.swift
//  SwiftUI Basics
//
//  Created by Viraj Tank on 08/01/23.
//

import SwiftUI

struct NavigationView: View {
    
    @State var name: String = ""
    @State var age: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // i gave title into navigation title below VStack
//                Text("Navigation Example").font(.title)
                
                Spacer()
                
                TextField("Enter your name", text: $name)
                    .padding(EdgeInsets.init(top: 0, leading: 8, bottom: 8, trailing: 8))
                TextField("Enter your age", text: $age)
                    .padding(EdgeInsets.init(top: 8, leading: 8, bottom: 0, trailing: 8))
                    .keyboardType(.numberPad)
                
                Spacer()
                
                NavigationLink(destination: {
                    ValidationView(name: name, age: age)
                }, label: {
                    Text("Navigate")
                        .font(.title)
                        .padding()
                        .overlay(Capsule().stroke())
                })
                
                NavigationLink(destination: {
                    ZStack {
                        Text("New View").font(.title)
                    }
                }, label: {
                    Text("Okay")
                        .font(.title)
                        .padding()
                        .overlay(Capsule().stroke())
                })
                
            }.padding().navigationTitle("Navigation Example")
        }
    }
}


struct ValidationView: View {
    let name: String
    let age: String
    
    var numericalAge: Int {
        Int(age) ?? -1
    }
    var body: some View {
        if numericalAge >= 18 {
            Text("\(name), You can vote!").navigationTitle("Back")
        } else if numericalAge < 1 {
            Text("\(numericalAge) is invalid Age").navigationTitle("Back")
        } else {
            Text("\(name) You can't vote!").navigationTitle("Back")
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
