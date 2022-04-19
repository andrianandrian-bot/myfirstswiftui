//
//  MySecondSwiftUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 17.04.2022.
//

import SwiftUI

struct ToggleSUI: View {
    
    @State private var showHello = true
    @State private var showDetail = true
    @State private var rotation = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $showHello.animation(.spring())) {
                Text("Show hello")
            }.padding(.horizontal, 20)
            
            if showHello {
                Text("Hello")
                
                Button {
                    withAnimation {
                        self.showDetail.toggle()
                    }
                    print(32432432)
                } label: {
                    Text("Show details")
                        .font(.largeTitle)
                }
                .padding(20)
                .background(Image("la").resizable())
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            if showDetail {
                Image("la")
                    .rotationEffect(.degrees(rotation))
                    .animation(Animation.easeInOut(duration: 3).delay(1))
                    .onTapGesture {
                        self.rotation += 360
                    }
            }

        }
    }
}

struct MySecondSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSUI()
    }
}
