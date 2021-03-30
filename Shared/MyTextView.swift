//
//  MyTextView.swift
//  practice
//
//  Created by yuni on 2021/03/29.
//

import SwiftUI

struct MyTextView: View {
    @State
    private var index: Int = 1
    
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange,
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            if(self.index == self.backgroundColors.count-1) {
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}


struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
