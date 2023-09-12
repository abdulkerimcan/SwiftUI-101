//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Abdulkerim Can on 11.09.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
     
    var body: some View {
        NavigationView {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.frameworks) { framework in
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                    }
                }
            }
        }
        .navigationTitle("Apple Frameworks")
        .sheet(isPresented: $viewModel.isShowingDetailView) {
            FrameworkDetailView(framework: viewModel.selectedFramework!,isShowingDetailView: $viewModel.isShowingDetailView)
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView().preferredColorScheme(.dark)
    }
}


