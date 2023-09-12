//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Abdulkerim Can on 11.09.2023.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .frame(width: 280,height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(16)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
