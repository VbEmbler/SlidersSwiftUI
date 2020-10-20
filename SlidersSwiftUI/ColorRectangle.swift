//
//  ColorRectangle.swift
//  SlidersSwiftUI
//
//  Created by Vladimir on 20/10/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import SwiftUI

struct ColorRectangle: View {
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color(red: redValue / 255,
                        green: greenValue / 255,
                        blue: blueValue / 255))
            .frame(height: 120)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 5)
                    .foregroundColor(.white)
        )
            .shadow(radius: 10)
    }
}

struct ColorRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ColorRectangle(redValue: .constant(50),
                       greenValue: .constant(60),
                       blueValue: .constant(70))
    }
}
