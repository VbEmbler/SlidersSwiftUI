//
//  ContentView.swift
//  SlidersSwiftUI
//
//  Created by Vladimir on 20/10/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
   
    var body: some View {
        ZStack {
            Color.init(UIColor.darkGray)
                .edgesIgnoringSafeArea(.all)
            .multilineTextAlignment(.trailing)
            VStack(spacing: 45) {
                ColorRectangle(redValue: $redSliderValue,
                               greenValue: $greenSliderValue,
                               blueValue: $blueSliderValue)
                VStack {
                    CustomSlider(value: $redSliderValue, accentColor: Color.red)
                    CustomSlider(value: $greenSliderValue, accentColor: Color.green)
                    CustomSlider(value: $blueSliderValue, accentColor: Color.blue)
                }
                Spacer()
            }
        .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
