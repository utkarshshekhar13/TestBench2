//
//  ThirdScreen.swift
//  TestBench2
//
//  Created by Utkarsh Shekhar on 25/11/19.
//  Copyright © 2019 Utkarsh Shekhar. All rights reserved.
//

import SwiftUI

struct ThirdScreen: View {
    @State var isClicked : Bool = false
    @State var isThirdSelectedFirst : Int? = nil
     @State var isThirdSelectedSecond : Int? = nil
    var body: some View {
        VStack {
            Text("Hello, World! Third Screen")
            
            NavigationLink(destination: MasterView(), tag: 1, selection: $isThirdSelectedFirst, label: {
                Button(action: {
                    self.isClicked = true
                    self.isThirdSelectedFirst = 1
                    print("Hello From Third Screen on clicking first screen button")
                }) {
                    Text("Go Back To First Screen")
                }
            })
            
            NavigationLink(destination: SecondScreen(), tag: 1, selection: $isThirdSelectedSecond, label: {
                               Button(action: {
                                   self.isClicked = true
                                   self.isThirdSelectedSecond = 1
                                   print("Hello From Third Screen on clicking second screen button")
                               }) {
                                   Text("Go To Second Screen")
                               }
                           })
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
