//
//  SecondScreen.swift
//  TestBench2
//
//  Created by Utkarsh Shekhar on 25/11/19.
//  Copyright © 2019 Utkarsh Shekhar. All rights reserved.
//

import SwiftUI
struct SecondScreen: View {
    @State var isClicked : Bool = false
    @State var isSecondSelectedThree : Int? = nil
    @State var isSecondSelectedFirst : Int? = nil
    var body: some View {
        VStack {
             Text("Hello, World! Second Screen")
            NavigationLink(destination: ThirdScreen(), tag: 1, selection: $isSecondSelectedThree, label: {
                Button(action: {
                    self.isClicked = true
                    self.isSecondSelectedThree = 1
                    print("Hello From Second Screen on clicking third screen button")
                }) {
                    Text("Go To Third Screen")
                }
            })
            
            NavigationLink(destination: MasterView(), tag: 1, selection: $isSecondSelectedFirst, label: {
                Button(action: {
                    self.isClicked = true
                    self.isSecondSelectedFirst = 1
                    print("Hello From Second Screen on clicking first screen button")
                }) {
                    Text("Go to First Screen")
                }
            })
            
            
        }.navigationBarBackButtonHidden(true)
        
        
        
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
