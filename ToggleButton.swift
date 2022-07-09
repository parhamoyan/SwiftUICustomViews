//
//  ToggleButton.swift
//  SwiftUICustomViews
//  Designed by Mark Lamb
//  https://dribbble.com/shots/2326459-Adobe-Toggle-Switch
//  Created by Parham Oyan on 09/07/2022.
//  Copyright © 2022 parhamoyan. All rights reserved.
//

import SwiftUI


struct ToggleButton: View {
    @State private var isOn = false
    
    var body: some View {
        ZStack {
            HStack(spacing: 0.0) {
                Capsule()
                    .frame(width: isOn ? 40 : 0, height: 5)
                    .foregroundColor(Color(red: 0.313, green: 0.318, blue: 0.39))
                    .mask(Rectangle()
                        .frame(width: isOn ? 40  : 0)
                        .offset(x: -5)
                    )
                
                Circle()
                    .strokeBorder(isOn ? Color(red: 0.972, green: 0.977, blue: 0.998) : Color(red: 0.623, green: 0.628, blue: 0.751), lineWidth: isOn ? 20 : 5)
                    .frame(width: 40, height: 40)
                
                Capsule()
                    .frame(width: isOn ? 0 : 40, height: 5)
                    .foregroundColor(Color(red: 0.313, green: 0.318, blue: 0.39))
                    .mask(Rectangle()
                        .frame(width: isOn ? 0 : 40)
                        .offset(x: 5)
                    )
            }
        }
        .onTapGesture() {
            withAnimation(Animation.easeInOut(duration: 0.3)) {
                self.isOn.toggle()
            }
        }
    }
}
