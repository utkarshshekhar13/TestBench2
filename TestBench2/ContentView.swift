//
//  ContentView.swift
//  TestBench2
//
//  Created by Utkarsh Shekhar on 25/11/19.
//  Copyright © 2019 Utkarsh Shekhar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            MasterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MasterView: View {
    @State var isClicked : Bool = false
    @State var isSelectedThree : Int? = nil
    @State var isSelectedTwo : Int? = nil
    var body: some View {
        VStack {
             Text("Hello, World! First Screen")
            NavigationLink(destination: SecondScreen(), tag: 1, selection: $isSelectedTwo, label: {
                Button(action: {
                    self.isClicked = true
                    self.isSelectedTwo = 1
                    print("Hello From First Screen on clicking second")
                }) {
                    Text("Go To Second Screen")
                }
            })
            
            NavigationLink(destination: ThirdScreen(), tag: 1, selection: $isSelectedThree, label: {
                Button(action: {
                    self.isClicked = true
                    self.isSelectedThree = 1
                    print("Hello from First Screen on clicking third")
                }) {
                    Text("Go To Third Screen")
                }
            })
            
            
        }.navigationBarBackButtonHidden(true)
    }
}
