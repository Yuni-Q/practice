//
//  ContentView.swift
//  Shared
//
//  Created by yuni on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                NavigationLink(destination: MyTextView()) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
