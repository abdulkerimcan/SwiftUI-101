//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Abdulkerim Can on 11.09.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
            }label: {
                Link("Learn More", destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: .constant(false)).preferredColorScheme(.dark)
    }
}
