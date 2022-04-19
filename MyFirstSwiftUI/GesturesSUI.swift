//
//  GesturesSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct GesturesSUI: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .gesture(DragGesture(minimumDistance: 200).onEnded({ _ in
                    print("Dragged")
                }))
            
            Spacer().gesture(LongPressGesture(minimumDuration: 2).onEnded({ _ in
                print("pressed")
            }))
            
            Image("la")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 3) {
                    print("Image tapped")
                }
        }
    }
}

struct GesturesSUI_Previews: PreviewProvider {
    static var previews: some View {
        GesturesSUI()
    }
}
