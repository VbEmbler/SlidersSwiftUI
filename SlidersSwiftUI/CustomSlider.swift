//
//  CustomSlider.swift
//  SlidersSwiftUI
//
//  Created by Vladimir on 20/10/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import SwiftUI

struct CustomSlider: View {
    @Binding var value: Double
    
    let accentColor: Color
    
    @State private var showAlert = false
    
    var body: some View {
        HStack(spacing: 15) {
            Text("\(lround(value))")
                .frame(width: 30)
                .font(.system(size: 12))
                .foregroundColor(Color.white)
            
            Slider(value: $value, in: 0...255)
                .accentColor(accentColor)
            
            TextField("", value: $value, formatter: NumberFormatter(), onCommit: {
                self.checkInputedValue()
            })
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Wrong Value"),
                          message: Text("Please enter value from 0 to 255"))
                })
                .multilineTextAlignment(.trailing)
                .frame(width: 30)
                .background(Color.white)
                .font(.system(size: 12))
                .cornerRadius(4)
        }
    }
}

extension CustomSlider {
    private func checkInputedValue() {
        if value < 0 || value > 255 {
            showAlert = true
            value = 0
        }
    }
}

struct CustomSlider_Previews: PreviewProvider {
    static var previews: some View {
        CustomSlider(value: .constant(25.5), accentColor: Color.red)
    }
}
