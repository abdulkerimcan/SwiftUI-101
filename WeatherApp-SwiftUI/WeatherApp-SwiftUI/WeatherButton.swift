//
//  WeatherButton.swift
//  WeatherApp-SwiftUI
//
//  Created by Abdulkerim Can on 11.09.2023.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(10)
    }
}
