//
//  GeometryReaderSUI.swift
//  MyFirstSwiftUI
//
//  Created by Andreas on 28.04.2022.
//

import SwiftUI

struct GeometryReaderSUI: View {
    var body: some View {
        VStack {
            TabView {
                ForEach(0..<10) { index in
                    GeometryReader { geometry in
                        let angle: Double = Double(geometry.frame(in: .global).minX) / -10
                        let blur = abs(geometry.frame(in: .global).minX / 4)
                        VStack {
                            Text("\(geometry.frame(in: .global).minX)")
                            Rectangle()
                                .frame(width: 300, height: 200)
                                .foregroundColor( index % 2 == 0 ? .green : .red)
                                .background(Color.green)
                                .cornerRadius(20)
                                .blendMode(.darken)
                                .rotation3DEffect(.degrees(angle),
                                                  axis: (x: 0, y: 1, z: 0))
                                .overlay(Circle().frame(width: 50).offset(x: geometry.frame(in: .global).minX - 16)
                                    .blur(radius: blur))
                        }
                    }
                }
            }
            .padding()
            .tabViewStyle(.page(indexDisplayMode: .always))
            .frame(height: 300)
        } // vstack
        .background(LinearGradient(gradient: Gradient(colors: [.gray, .blue.opacity(0.4)]), startPoint: .top, endPoint: .bottom))
    }
}

struct GeometryReaderSUI_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderSUI()
    }
}
