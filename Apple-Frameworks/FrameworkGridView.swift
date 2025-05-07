//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by viraj shah on 07/05/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Framework")
        }
    }
    
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView:View{
    
    let framework:Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90.0, height: 90.0)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
        .padding()
    }

    
}
