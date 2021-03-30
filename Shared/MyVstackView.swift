//
//  MyVstackView.swift
//  practice
//
//  Created by yuni on 2021/03/29.
//

import SwiftUI

struct MyVstackView: View {
    var body: some View {
        VStack {
            Text("1!").fontWeight(.bold).font(.system(size: 60))
            Text("2!").fontWeight(.bold).font(.system(size: 60))
            Text("3!").fontWeight(.bold).font(.system(size: 60))
        }.background(Color.red)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
